
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int ahw; } ;


 int ARRAY_SIZE (int ) ;
 int QLCNIC_DEV_INFO_SIZE ;
 int QLCRDX (int ,int) ;
 int QLC_SHARED_REG_RD32 (struct qlcnic_adapter*,int) ;
 int qlcnic_83xx_ext_reg_tbl ;
 int qlcnic_83xx_reg_tbl ;

int qlcnic_83xx_get_registers(struct qlcnic_adapter *adapter, u32 *regs_buff)
{
 int i, j = 0;

 for (i = QLCNIC_DEV_INFO_SIZE + 1;
      j < ARRAY_SIZE(qlcnic_83xx_reg_tbl); i++, j++)
  regs_buff[i] = QLC_SHARED_REG_RD32(adapter, j);

 for (j = 0; j < ARRAY_SIZE(qlcnic_83xx_ext_reg_tbl); j++)
  regs_buff[i++] = QLCRDX(adapter->ahw, j);
 return i;
}
