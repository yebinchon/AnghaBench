
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_rcv_buf_cb {int buf_phy_addr_low; int buf_phy_addr_high; } ;
struct ql3_adapter {int num_large_buffers; scalar_t__ lrg_buf_skb_check; scalar_t__ lrg_buf_index; struct ql_rcv_buf_cb* lrg_buf; struct bufq_addr_element* lrg_buf_q_virt_addr; } ;
struct bufq_addr_element {int addr_low; int addr_high; } ;



__attribute__((used)) static void ql_init_large_buffers(struct ql3_adapter *qdev)
{
 int i;
 struct ql_rcv_buf_cb *lrg_buf_cb;
 struct bufq_addr_element *buf_addr_ele = qdev->lrg_buf_q_virt_addr;

 for (i = 0; i < qdev->num_large_buffers; i++) {
  lrg_buf_cb = &qdev->lrg_buf[i];
  buf_addr_ele->addr_high = lrg_buf_cb->buf_phy_addr_high;
  buf_addr_ele->addr_low = lrg_buf_cb->buf_phy_addr_low;
  buf_addr_ele++;
 }
 qdev->lrg_buf_index = 0;
 qdev->lrg_buf_skb_check = 0;
}
