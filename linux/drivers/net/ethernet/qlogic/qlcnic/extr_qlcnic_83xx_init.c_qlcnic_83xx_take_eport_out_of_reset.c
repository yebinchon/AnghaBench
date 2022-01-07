
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;


 int QLCWR32 (struct qlcnic_adapter*,int ,int) ;
 int QLC_83XX_RESET_CONTROL ;
 int QLC_83XX_RESET_EPGSHIM ;
 int QLC_83XX_RESET_ETHERPCS ;
 int QLC_83XX_RESET_PORT0 ;
 int QLC_83XX_RESET_PORT1 ;
 int QLC_83XX_RESET_PORT2 ;
 int QLC_83XX_RESET_PORT3 ;
 int QLC_83XX_RESET_REG ;
 int QLC_83XX_RESET_SRESHIM ;

__attribute__((used)) static void qlcnic_83xx_take_eport_out_of_reset(struct qlcnic_adapter *adapter)
{
 QLCWR32(adapter, QLC_83XX_RESET_REG, 0);
 QLCWR32(adapter, QLC_83XX_RESET_PORT0, 0);
 QLCWR32(adapter, QLC_83XX_RESET_PORT1, 0);
 QLCWR32(adapter, QLC_83XX_RESET_PORT2, 0);
 QLCWR32(adapter, QLC_83XX_RESET_PORT3, 0);
 QLCWR32(adapter, QLC_83XX_RESET_SRESHIM, 0);
 QLCWR32(adapter, QLC_83XX_RESET_EPGSHIM, 0);
 QLCWR32(adapter, QLC_83XX_RESET_ETHERPCS, 0);
 QLCWR32(adapter, QLC_83XX_RESET_CONTROL, 1);
}
