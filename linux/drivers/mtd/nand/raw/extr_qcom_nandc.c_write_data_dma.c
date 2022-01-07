
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qcom_nand_controller {TYPE_1__* props; } ;
struct TYPE_2__ {scalar_t__ is_bam; } ;


 int prep_adm_dma_desc (struct qcom_nand_controller*,int,int,int const*,int,int) ;
 int prep_bam_dma_desc_data (struct qcom_nand_controller*,int,int const*,int,unsigned int) ;

__attribute__((used)) static int write_data_dma(struct qcom_nand_controller *nandc, int reg_off,
     const u8 *vaddr, int size, unsigned int flags)
{
 if (nandc->props->is_bam)
  return prep_bam_dma_desc_data(nandc, 0, vaddr, size, flags);

 return prep_adm_dma_desc(nandc, 0, reg_off, vaddr, size, 0);
}
