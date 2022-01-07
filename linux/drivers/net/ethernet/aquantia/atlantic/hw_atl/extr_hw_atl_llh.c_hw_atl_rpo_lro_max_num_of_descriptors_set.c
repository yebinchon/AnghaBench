
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int aq_hw_write_reg_bit (struct aq_hw_s*,int,int,int,int) ;

void hw_atl_rpo_lro_max_num_of_descriptors_set(struct aq_hw_s *aq_hw,
            u32 lro_max_number_of_descriptors,
            u32 lro)
{

 static u32 rpo_lro_ldes_max_adr[32] = {
   0x000055A0U, 0x000055A0U, 0x000055A0U, 0x000055A0U,
   0x000055A0U, 0x000055A0U, 0x000055A0U, 0x000055A0U,
   0x000055A4U, 0x000055A4U, 0x000055A4U, 0x000055A4U,
   0x000055A4U, 0x000055A4U, 0x000055A4U, 0x000055A4U,
   0x000055A8U, 0x000055A8U, 0x000055A8U, 0x000055A8U,
   0x000055A8U, 0x000055A8U, 0x000055A8U, 0x000055A8U,
   0x000055ACU, 0x000055ACU, 0x000055ACU, 0x000055ACU,
   0x000055ACU, 0x000055ACU, 0x000055ACU, 0x000055ACU
  };


 static u32 rpo_lro_ldes_max_msk[32] = {
   0x00000003U, 0x00000030U, 0x00000300U, 0x00003000U,
   0x00030000U, 0x00300000U, 0x03000000U, 0x30000000U,
   0x00000003U, 0x00000030U, 0x00000300U, 0x00003000U,
   0x00030000U, 0x00300000U, 0x03000000U, 0x30000000U,
   0x00000003U, 0x00000030U, 0x00000300U, 0x00003000U,
   0x00030000U, 0x00300000U, 0x03000000U, 0x30000000U,
   0x00000003U, 0x00000030U, 0x00000300U, 0x00003000U,
   0x00030000U, 0x00300000U, 0x03000000U, 0x30000000U
  };


 static u32 rpo_lro_ldes_max_shift[32] = {
   0U, 4U, 8U, 12U, 16U, 20U, 24U, 28U,
   0U, 4U, 8U, 12U, 16U, 20U, 24U, 28U,
   0U, 4U, 8U, 12U, 16U, 20U, 24U, 28U,
   0U, 4U, 8U, 12U, 16U, 20U, 24U, 28U
  };

 aq_hw_write_reg_bit(aq_hw, rpo_lro_ldes_max_adr[lro],
       rpo_lro_ldes_max_msk[lro],
       rpo_lro_ldes_max_shift[lro],
       lro_max_number_of_descriptors);
}
