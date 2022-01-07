
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hnae_queue {int dummy; } ;


 int RCBV2_RX_RING_INT_STS_REG ;
 int RCBV2_TX_RING_INT_STS_REG ;
 int RCB_INT_FLAG_RX ;
 int RCB_INT_FLAG_TX ;
 int dsaf_write_dev (struct hnae_queue*,int ,int) ;

void hns_rcbv2_int_clr_hw(struct hnae_queue *q, u32 flag)
{
 if (flag & RCB_INT_FLAG_TX)
  dsaf_write_dev(q, RCBV2_TX_RING_INT_STS_REG, 1);

 if (flag & RCB_INT_FLAG_RX)
  dsaf_write_dev(q, RCBV2_RX_RING_INT_STS_REG, 1);
}
