
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__* cb; } ;
struct fmdev {int rx_task; int rx_q; } ;


 long EFAULT ;
 long EINVAL ;
 scalar_t__ FM_PKT_LOGICAL_CHAN_NUMBER ;
 int fmerr (char*,...) ;
 int memcpy (int ,scalar_t__*,int) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static long fm_st_receive(void *arg, struct sk_buff *skb)
{
 struct fmdev *fmdev;

 fmdev = (struct fmdev *)arg;

 if (skb == ((void*)0)) {
  fmerr("Invalid SKB received from ST\n");
  return -EFAULT;
 }

 if (skb->cb[0] != FM_PKT_LOGICAL_CHAN_NUMBER) {
  fmerr("Received SKB (%p) is not FM Channel 8 pkt\n", skb);
  return -EINVAL;
 }

 memcpy(skb_push(skb, 1), &skb->cb[0], 1);
 skb_queue_tail(&fmdev->rx_q, skb);
 tasklet_schedule(&fmdev->rx_task);

 return 0;
}
