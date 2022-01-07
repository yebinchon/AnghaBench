
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {int data; } ;
struct qlcnic_recv_context {struct qlcnic_host_sds_ring* sds_rings; } ;
struct qlcnic_host_sds_ring {int dummy; } ;
struct qlcnic_adapter {TYPE_2__* pdev; TYPE_1__* ahw; int netdev; int mac_addr; struct qlcnic_recv_context* recv_ctx; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ diag_cnt; } ;


 scalar_t__ QLCNIC_ILB_MODE ;
 int QLCNIC_ILB_PKT_SIZE ;
 int QLCNIC_LB_PKT_POLL_COUNT ;
 int QLCNIC_LB_PKT_POLL_DELAY_MSEC ;
 int QLCNIC_NUM_ILB_PKT ;
 int dev_err (int *,char*,int,int) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dev_warn (int *,char*,...) ;
 int msleep (int ) ;
 struct sk_buff* netdev_alloc_skb (int ,int ) ;
 int qlcnic_create_loopback_buff (int ,int ) ;
 int qlcnic_process_rcv_ring_diag (struct qlcnic_host_sds_ring*) ;
 int qlcnic_xmit_frame (struct sk_buff*,int ) ;
 int skb_put (struct sk_buff*,int ) ;

int qlcnic_do_lb_test(struct qlcnic_adapter *adapter, u8 mode)
{
 struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;
 struct qlcnic_host_sds_ring *sds_ring = &recv_ctx->sds_rings[0];
 struct sk_buff *skb;
 int i, loop, cnt = 0;

 for (i = 0; i < QLCNIC_NUM_ILB_PKT; i++) {
  skb = netdev_alloc_skb(adapter->netdev, QLCNIC_ILB_PKT_SIZE);
  if (!skb)
   break;
  qlcnic_create_loopback_buff(skb->data, adapter->mac_addr);
  skb_put(skb, QLCNIC_ILB_PKT_SIZE);
  adapter->ahw->diag_cnt = 0;
  qlcnic_xmit_frame(skb, adapter->netdev);
  loop = 0;

  do {
   msleep(QLCNIC_LB_PKT_POLL_DELAY_MSEC);
   qlcnic_process_rcv_ring_diag(sds_ring);
   if (loop++ > QLCNIC_LB_PKT_POLL_COUNT)
    break;
  } while (!adapter->ahw->diag_cnt);

  dev_kfree_skb_any(skb);

  if (!adapter->ahw->diag_cnt)
   dev_warn(&adapter->pdev->dev,
     "LB Test: packet #%d was not received\n",
     i + 1);
  else
   cnt++;
 }
 if (cnt != i) {
  dev_err(&adapter->pdev->dev,
   "LB Test: failed, TX[%d], RX[%d]\n", i, cnt);
  if (mode != QLCNIC_ILB_MODE)
   dev_warn(&adapter->pdev->dev,
     "WARNING: Please check loopback cable\n");
  return -1;
 }
 return 0;
}
