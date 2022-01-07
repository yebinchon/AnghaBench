
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_nand_controller {scalar_t__ base; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void nandc_write(struct qcom_nand_controller *nandc, int offset,
          u32 val)
{
 iowrite32(val, nandc->base + offset);
}
