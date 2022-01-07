
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct fmdev {scalar_t__ last_tx_jiffies; int tx_cnt; int * resp_comp; int pre_op; int tx_q; } ;
struct TYPE_2__ {int * completion; int fm_op; } ;


 scalar_t__ FM_DRV_TX_TIMEOUT ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 TYPE_1__* fm_cb (struct sk_buff*) ;
 int fmerr (char*,...) ;
 int g_st_write (struct sk_buff*) ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void send_tasklet(unsigned long arg)
{
 struct fmdev *fmdev;
 struct sk_buff *skb;
 int len;

 fmdev = (struct fmdev *)arg;

 if (!atomic_read(&fmdev->tx_cnt))
  return;


 if ((jiffies - fmdev->last_tx_jiffies) > FM_DRV_TX_TIMEOUT) {
  fmerr("TX timeout occurred\n");
  atomic_set(&fmdev->tx_cnt, 1);
 }


 skb = skb_dequeue(&fmdev->tx_q);
 if (!skb)
  return;

 atomic_dec(&fmdev->tx_cnt);
 fmdev->pre_op = fm_cb(skb)->fm_op;

 if (fmdev->resp_comp != ((void*)0))
  fmerr("Response completion handler is not NULL\n");

 fmdev->resp_comp = fm_cb(skb)->completion;


 len = g_st_write(skb);
 if (len < 0) {
  kfree_skb(skb);
  fmdev->resp_comp = ((void*)0);
  fmerr("TX tasklet failed to send skb(%p)\n", skb);
  atomic_set(&fmdev->tx_cnt, 1);
 } else {
  fmdev->last_tx_jiffies = jiffies;
 }
}
