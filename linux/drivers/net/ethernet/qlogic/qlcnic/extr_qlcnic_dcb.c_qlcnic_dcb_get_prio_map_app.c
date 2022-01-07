
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;


 int QLC_82XX_DCB_GET_PRIOMAP_APP (int ) ;
 int QLC_83XX_DCB_GET_PRIOMAP_APP (int ) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;

__attribute__((used)) static inline u8 qlcnic_dcb_get_prio_map_app(struct qlcnic_adapter *adapter,
          u32 val)
{
 if (qlcnic_82xx_check(adapter))
  return QLC_82XX_DCB_GET_PRIOMAP_APP(val);
 else
  return QLC_83XX_DCB_GET_PRIOMAP_APP(val);
}
