
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_nand_controller {scalar_t__ base; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 nandc_read(struct qcom_nand_controller *nandc, int offset)
{
 return ioread32(nandc->base + offset);
}
