
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct recv_comp_data {scalar_t__ status; int tid; } ;
struct netvsc_device {scalar_t__ recv_completion_cnt; struct netvsc_channel* chan_table; } ;
struct multi_recv_comp {int next; struct recv_comp_data* slots; } ;
struct netvsc_channel {struct multi_recv_comp mrc; } ;
struct net_device {int dummy; } ;


 scalar_t__ NAPI_POLL_WEIGHT ;
 int netdev_err (struct net_device*,char*,size_t,int ) ;
 int recv_comp_slot_avail (struct netvsc_device*,struct multi_recv_comp*,scalar_t__*,scalar_t__*) ;
 int send_recv_completions (struct net_device*,struct netvsc_device*,struct netvsc_channel*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void enq_receive_complete(struct net_device *ndev,
     struct netvsc_device *nvdev, u16 q_idx,
     u64 tid, u32 status)
{
 struct netvsc_channel *nvchan = &nvdev->chan_table[q_idx];
 struct multi_recv_comp *mrc = &nvchan->mrc;
 struct recv_comp_data *rcd;
 u32 filled, avail;

 recv_comp_slot_avail(nvdev, mrc, &filled, &avail);

 if (unlikely(filled > NAPI_POLL_WEIGHT)) {
  send_recv_completions(ndev, nvdev, nvchan);
  recv_comp_slot_avail(nvdev, mrc, &filled, &avail);
 }

 if (unlikely(!avail)) {
  netdev_err(ndev, "Recv_comp full buf q:%hd, tid:%llx\n",
      q_idx, tid);
  return;
 }

 rcd = mrc->slots + mrc->next;
 rcd->tid = tid;
 rcd->status = status;

 if (++mrc->next == nvdev->recv_completion_cnt)
  mrc->next = 0;
}
