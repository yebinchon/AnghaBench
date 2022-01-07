
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_nand_controller {scalar_t__ reg_read_pos; } ;


 int nandc_read_buffer_sync (struct qcom_nand_controller*,int) ;

__attribute__((used)) static void clear_read_regs(struct qcom_nand_controller *nandc)
{
 nandc->reg_read_pos = 0;
 nandc_read_buffer_sync(nandc, 0);
}
