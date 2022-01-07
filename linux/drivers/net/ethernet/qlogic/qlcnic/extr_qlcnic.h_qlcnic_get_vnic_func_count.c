
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;


 int QLC_84XX_VNIC_COUNT ;
 int QLC_DEFAULT_VNIC_COUNT ;
 scalar_t__ qlcnic_84xx_check (struct qlcnic_adapter*) ;

__attribute__((used)) static inline u32 qlcnic_get_vnic_func_count(struct qlcnic_adapter *adapter)
{
 if (qlcnic_84xx_check(adapter))
  return QLC_84XX_VNIC_COUNT;
 else
  return QLC_DEFAULT_VNIC_COUNT;
}
