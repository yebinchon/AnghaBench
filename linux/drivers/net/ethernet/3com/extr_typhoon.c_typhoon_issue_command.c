
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typhoon_indexes {scalar_t__ respCleared; scalar_t__ respReady; } ;
struct basic_ring {scalar_t__ lastWrite; scalar_t__ ringBase; } ;
struct typhoon {int awaiting_resp; int command_lock; scalar_t__ ioaddr; int dev; struct basic_ring cmdRing; struct typhoon_indexes* indexes; } ;
struct resp_desc {int flags; } ;
struct cmd_desc {int flags; } ;


 scalar_t__ COMMAND_RING_SIZE ;
 int EIO ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int TYPHOON_CMD_RESPOND ;
 scalar_t__ TYPHOON_REG_CMD_READY ;
 scalar_t__ TYPHOON_REG_SELF_INTERRUPT ;
 int TYPHOON_RESP_ERROR ;
 int TYPHOON_UDELAY ;
 int TYPHOON_WAIT_TIMEOUT ;
 int iowrite32 (int,scalar_t__) ;
 int memcpy (scalar_t__,struct cmd_desc*,int) ;
 int netdev_err (int ,char*,int,int,int,int) ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int typhoon_inc_cmd_index (scalar_t__*,int) ;
 int typhoon_num_free_cmd (struct typhoon*) ;
 int typhoon_num_free_resp (struct typhoon*) ;
 int typhoon_post_pci_writes (scalar_t__) ;
 int typhoon_process_response (struct typhoon*,int,struct resp_desc*) ;
 int udelay (int ) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static int
typhoon_issue_command(struct typhoon *tp, int num_cmd, struct cmd_desc *cmd,
        int num_resp, struct resp_desc *resp)
{
 struct typhoon_indexes *indexes = tp->indexes;
 struct basic_ring *ring = &tp->cmdRing;
 struct resp_desc local_resp;
 int i, err = 0;
 int got_resp;
 int freeCmd, freeResp;
 int len, wrap_len;

 spin_lock(&tp->command_lock);

 freeCmd = typhoon_num_free_cmd(tp);
 freeResp = typhoon_num_free_resp(tp);

 if(freeCmd < num_cmd || freeResp < num_resp) {
  netdev_err(tp->dev, "no descs for cmd, had (needed) %d (%d) cmd, %d (%d) resp\n",
      freeCmd, num_cmd, freeResp, num_resp);
  err = -ENOMEM;
  goto out;
 }

 if(cmd->flags & TYPHOON_CMD_RESPOND) {



  tp->awaiting_resp = 1;
  if(resp == ((void*)0)) {
   resp = &local_resp;
   num_resp = 1;
  }
 }

 wrap_len = 0;
 len = num_cmd * sizeof(*cmd);
 if(unlikely(ring->lastWrite + len > COMMAND_RING_SIZE)) {
  wrap_len = ring->lastWrite + len - COMMAND_RING_SIZE;
  len = COMMAND_RING_SIZE - ring->lastWrite;
 }

 memcpy(ring->ringBase + ring->lastWrite, cmd, len);
 if(unlikely(wrap_len)) {
  struct cmd_desc *wrap_ptr = cmd;
  wrap_ptr += len / sizeof(*cmd);
  memcpy(ring->ringBase, wrap_ptr, wrap_len);
 }

 typhoon_inc_cmd_index(&ring->lastWrite, num_cmd);



 wmb();
 iowrite32(ring->lastWrite, tp->ioaddr + TYPHOON_REG_CMD_READY);
 typhoon_post_pci_writes(tp->ioaddr);

 if((cmd->flags & TYPHOON_CMD_RESPOND) == 0)
  goto out;
 got_resp = 0;
 for(i = 0; i < TYPHOON_WAIT_TIMEOUT && !got_resp; i++) {
  if(indexes->respCleared != indexes->respReady)
   got_resp = typhoon_process_response(tp, num_resp,
        resp);
  udelay(TYPHOON_UDELAY);
 }

 if(!got_resp) {
  err = -ETIMEDOUT;
  goto out;
 }




 if(resp->flags & TYPHOON_RESP_ERROR)
  err = -EIO;

out:
 if(tp->awaiting_resp) {
  tp->awaiting_resp = 0;
  smp_wmb();
  if(indexes->respCleared != indexes->respReady)
   iowrite32(1, tp->ioaddr + TYPHOON_REG_SELF_INTERRUPT);
 }

 spin_unlock(&tp->command_lock);
 return err;
}
