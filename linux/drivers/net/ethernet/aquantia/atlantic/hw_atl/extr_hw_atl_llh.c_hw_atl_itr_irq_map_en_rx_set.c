
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int aq_hw_write_reg_bit (struct aq_hw_s*,int,int,int,int) ;

void hw_atl_itr_irq_map_en_rx_set(struct aq_hw_s *aq_hw, u32 irq_map_en_rx,
      u32 rx)
{

 static u32 itr_imr_rxren_adr[32] = {
   0x00002100U, 0x00002100U, 0x00002104U, 0x00002104U,
   0x00002108U, 0x00002108U, 0x0000210CU, 0x0000210CU,
   0x00002110U, 0x00002110U, 0x00002114U, 0x00002114U,
   0x00002118U, 0x00002118U, 0x0000211CU, 0x0000211CU,
   0x00002120U, 0x00002120U, 0x00002124U, 0x00002124U,
   0x00002128U, 0x00002128U, 0x0000212CU, 0x0000212CU,
   0x00002130U, 0x00002130U, 0x00002134U, 0x00002134U,
   0x00002138U, 0x00002138U, 0x0000213CU, 0x0000213CU
  };


 static u32 itr_imr_rxren_msk[32] = {
   0x00008000U, 0x00000080U, 0x00008000U, 0x00000080U,
   0x00008000U, 0x00000080U, 0x00008000U, 0x00000080U,
   0x00008000U, 0x00000080U, 0x00008000U, 0x00000080U,
   0x00008000U, 0x00000080U, 0x00008000U, 0x00000080U,
   0x00008000U, 0x00000080U, 0x00008000U, 0x00000080U,
   0x00008000U, 0x00000080U, 0x00008000U, 0x00000080U,
   0x00008000U, 0x00000080U, 0x00008000U, 0x00000080U,
   0x00008000U, 0x00000080U, 0x00008000U, 0x00000080U
  };


 static u32 itr_imr_rxren_shift[32] = {
   15U, 7U, 15U, 7U, 15U, 7U, 15U, 7U,
   15U, 7U, 15U, 7U, 15U, 7U, 15U, 7U,
   15U, 7U, 15U, 7U, 15U, 7U, 15U, 7U,
   15U, 7U, 15U, 7U, 15U, 7U, 15U, 7U
  };

 aq_hw_write_reg_bit(aq_hw, itr_imr_rxren_adr[rx],
       itr_imr_rxren_msk[rx],
       itr_imr_rxren_shift[rx],
       irq_map_en_rx);
}
