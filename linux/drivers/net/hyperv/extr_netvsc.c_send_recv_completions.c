
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct recv_comp_data {int tid; int status; } ;
struct nvsp_message_header {int msg_type; } ;
struct netvsc_device {scalar_t__ recv_completion_cnt; int destroy; int wait_drain; } ;
struct multi_recv_comp {scalar_t__ first; scalar_t__ next; struct recv_comp_data* slots; } ;
struct netvsc_channel {int channel; struct multi_recv_comp mrc; } ;
struct TYPE_2__ {int rx_comp_busy; } ;
struct net_device_context {TYPE_1__ eth_stats; } ;
struct net_device {int dummy; } ;
typedef int msg ;


 int NVSP_MSG1_TYPE_SEND_RNDIS_PKT_COMPLETE ;
 int VM_PKT_COMP ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 scalar_t__ unlikely (int) ;
 int vmbus_sendpacket (int ,struct recv_comp_msg*,int,int ,int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int send_recv_completions(struct net_device *ndev,
     struct netvsc_device *nvdev,
     struct netvsc_channel *nvchan)
{
 struct multi_recv_comp *mrc = &nvchan->mrc;
 struct recv_comp_msg {
  struct nvsp_message_header hdr;
  u32 status;
 } __packed;
 struct recv_comp_msg msg = {
  .hdr.msg_type = NVSP_MSG1_TYPE_SEND_RNDIS_PKT_COMPLETE,
 };
 int ret;

 while (mrc->first != mrc->next) {
  const struct recv_comp_data *rcd
   = mrc->slots + mrc->first;

  msg.status = rcd->status;
  ret = vmbus_sendpacket(nvchan->channel, &msg, sizeof(msg),
           rcd->tid, VM_PKT_COMP, 0);
  if (unlikely(ret)) {
   struct net_device_context *ndev_ctx = netdev_priv(ndev);

   ++ndev_ctx->eth_stats.rx_comp_busy;
   return ret;
  }

  if (++mrc->first == nvdev->recv_completion_cnt)
   mrc->first = 0;
 }


 if (unlikely(nvdev->destroy))
  wake_up(&nvdev->wait_drain);

 return 0;
}
