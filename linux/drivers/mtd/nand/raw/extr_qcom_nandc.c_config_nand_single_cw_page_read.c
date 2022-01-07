
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_nand_controller {int dummy; } ;


 int config_nand_cw_read (struct qcom_nand_controller*,int) ;
 int config_nand_page_read (struct qcom_nand_controller*) ;

__attribute__((used)) static void
config_nand_single_cw_page_read(struct qcom_nand_controller *nandc,
    bool use_ecc)
{
 config_nand_page_read(nandc);
 config_nand_cw_read(nandc, use_ecc);
}
