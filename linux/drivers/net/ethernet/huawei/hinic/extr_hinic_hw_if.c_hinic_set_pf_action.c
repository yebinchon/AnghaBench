
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_hwif {int dummy; } ;
typedef enum hinic_pf_action { ____Placeholder_hinic_pf_action } hinic_pf_action ;


 int HINIC_CSR_FUNC_ATTR5_ADDR ;
 int HINIC_FA5_CLEAR (int ,int ) ;
 int HINIC_FA5_SET (int,int ) ;
 int PF_ACTION ;
 int hinic_hwif_read_reg (struct hinic_hwif*,int ) ;
 int hinic_hwif_write_reg (struct hinic_hwif*,int ,int ) ;

void hinic_set_pf_action(struct hinic_hwif *hwif, enum hinic_pf_action action)
{
 u32 attr5 = hinic_hwif_read_reg(hwif, HINIC_CSR_FUNC_ATTR5_ADDR);

 attr5 = HINIC_FA5_CLEAR(attr5, PF_ACTION);
 attr5 |= HINIC_FA5_SET(action, PF_ACTION);

 hinic_hwif_write_reg(hwif, HINIC_CSR_FUNC_ATTR5_ADDR, attr5);
}
