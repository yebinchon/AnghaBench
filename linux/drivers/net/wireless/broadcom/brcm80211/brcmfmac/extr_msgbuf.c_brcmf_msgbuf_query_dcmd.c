
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct sk_buff {int data; } ;
struct brcmf_pub {TYPE_1__* proto; } ;
struct brcmf_msgbuf {int ctl_completed; scalar_t__ ioctl_resp_ret_len; int ioctl_resp_status; int ioctl_resp_pktid; int rx_pktids; TYPE_3__* drvr; } ;
struct TYPE_6__ {TYPE_2__* bus_if; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {scalar_t__ pd; } ;


 int EBADF ;
 int EIO ;
 int MSGBUF ;
 int bphy_err (struct brcmf_pub*,char*) ;
 int brcmf_dbg (int ,char*,int,scalar_t__,scalar_t__) ;
 struct sk_buff* brcmf_msgbuf_get_pktid (int ,int ,int ) ;
 int brcmf_msgbuf_ioctl_resp_wait (struct brcmf_msgbuf*) ;
 int brcmf_msgbuf_tx_ioctl (struct brcmf_pub*,int,scalar_t__,void*,scalar_t__) ;
 int brcmu_pkt_buf_free_skb (struct sk_buff*) ;
 int memcpy (void*,int ,scalar_t__) ;

__attribute__((used)) static int brcmf_msgbuf_query_dcmd(struct brcmf_pub *drvr, int ifidx,
       uint cmd, void *buf, uint len, int *fwerr)
{
 struct brcmf_msgbuf *msgbuf = (struct brcmf_msgbuf *)drvr->proto->pd;
 struct sk_buff *skb = ((void*)0);
 int timeout;
 int err;

 brcmf_dbg(MSGBUF, "ifidx=%d, cmd=%d, len=%d\n", ifidx, cmd, len);
 *fwerr = 0;
 msgbuf->ctl_completed = 0;
 err = brcmf_msgbuf_tx_ioctl(drvr, ifidx, cmd, buf, len);
 if (err)
  return err;

 timeout = brcmf_msgbuf_ioctl_resp_wait(msgbuf);
 if (!timeout) {
  bphy_err(drvr, "Timeout on response for query command\n");
  return -EIO;
 }

 skb = brcmf_msgbuf_get_pktid(msgbuf->drvr->bus_if->dev,
         msgbuf->rx_pktids,
         msgbuf->ioctl_resp_pktid);
 if (msgbuf->ioctl_resp_ret_len != 0) {
  if (!skb)
   return -EBADF;

  memcpy(buf, skb->data, (len < msgbuf->ioctl_resp_ret_len) ?
           len : msgbuf->ioctl_resp_ret_len);
 }
 brcmu_pkt_buf_free_skb(skb);

 *fwerr = msgbuf->ioctl_resp_status;
 return 0;
}
