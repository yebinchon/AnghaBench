
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;


 int QLC_82XX_DCB_GET_NUMAPP (int ) ;
 int QLC_83XX_DCB_GET_NUMAPP (int ) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;

__attribute__((used)) static u8 qlcnic_dcb_get_num_app(struct qlcnic_adapter *adapter, u32 val)
{
 if (qlcnic_82xx_check(adapter))
  return QLC_82XX_DCB_GET_NUMAPP(val);
 else
  return QLC_83XX_DCB_GET_NUMAPP(val);
}
