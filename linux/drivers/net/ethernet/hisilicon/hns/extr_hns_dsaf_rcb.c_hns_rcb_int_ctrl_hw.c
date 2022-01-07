
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hnae_queue {int dummy; } ;


 int RCB_INT_FLAG_RX ;
 int RCB_INT_FLAG_TX ;
 int RCB_RING_INTMSK_RXWL_REG ;
 int RCB_RING_INTMSK_RX_OVERTIME_REG ;
 int RCB_RING_INTMSK_TXWL_REG ;
 int RCB_RING_INTMSK_TX_OVERTIME_REG ;
 int dsaf_write_dev (struct hnae_queue*,int ,int) ;

void hns_rcb_int_ctrl_hw(struct hnae_queue *q, u32 flag, u32 mask)
{
 u32 int_mask_en = !!mask;

 if (flag & RCB_INT_FLAG_TX) {
  dsaf_write_dev(q, RCB_RING_INTMSK_TXWL_REG, int_mask_en);
  dsaf_write_dev(q, RCB_RING_INTMSK_TX_OVERTIME_REG,
          int_mask_en);
 }

 if (flag & RCB_INT_FLAG_RX) {
  dsaf_write_dev(q, RCB_RING_INTMSK_RXWL_REG, int_mask_en);
  dsaf_write_dev(q, RCB_RING_INTMSK_RX_OVERTIME_REG,
          int_mask_en);
 }
}
