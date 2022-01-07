
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_hwif {int dummy; } ;


 int HINIC_CSR_FUNC_ATTR0_ADDR ;
 int HINIC_CSR_FUNC_ATTR1_ADDR ;
 int hinic_hwif_read_reg (struct hinic_hwif*,int ) ;
 int set_hwif_attr (struct hinic_hwif*,int ,int ) ;

__attribute__((used)) static void read_hwif_attr(struct hinic_hwif *hwif)
{
 u32 addr, attr0, attr1;

 addr = HINIC_CSR_FUNC_ATTR0_ADDR;
 attr0 = hinic_hwif_read_reg(hwif, addr);

 addr = HINIC_CSR_FUNC_ATTR1_ADDR;
 attr1 = hinic_hwif_read_reg(hwif, addr);

 set_hwif_attr(hwif, attr0, attr1);
}
