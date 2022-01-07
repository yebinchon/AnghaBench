
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hnae_queue {int dummy; } ;


 int RCB_INT_FLAG_RX ;
 int RCB_INT_FLAG_TX ;
 int RCB_RING_INTSTS_RX_OVERTIME_REG ;
 int RCB_RING_INTSTS_RX_RING_REG ;
 int RCB_RING_INTSTS_TX_OVERTIME_REG ;
 int RCB_RING_INTSTS_TX_RING_REG ;
 int dsaf_write_dev (struct hnae_queue*,int ,int) ;

void hns_rcb_int_clr_hw(struct hnae_queue *q, u32 flag)
{
 if (flag & RCB_INT_FLAG_TX) {
  dsaf_write_dev(q, RCB_RING_INTSTS_TX_RING_REG, 1);
  dsaf_write_dev(q, RCB_RING_INTSTS_TX_OVERTIME_REG, 1);
 }

 if (flag & RCB_INT_FLAG_RX) {
  dsaf_write_dev(q, RCB_RING_INTSTS_RX_RING_REG, 1);
  dsaf_write_dev(q, RCB_RING_INTSTS_RX_OVERTIME_REG, 1);
 }
}
