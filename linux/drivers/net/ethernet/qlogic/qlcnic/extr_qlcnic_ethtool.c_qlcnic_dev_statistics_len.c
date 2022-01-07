
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int flags; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int QLCNIC_ESWITCH_ENABLED ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 int qlcnic_82xx_statistics (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_statistics (struct qlcnic_adapter*) ;
 int qlcnic_device_gstrings_stats ;

__attribute__((used)) static int qlcnic_dev_statistics_len(struct qlcnic_adapter *adapter)
{
 int len = -1;

 if (qlcnic_82xx_check(adapter)) {
  len = qlcnic_82xx_statistics(adapter);
  if (adapter->flags & QLCNIC_ESWITCH_ENABLED)
   len += ARRAY_SIZE(qlcnic_device_gstrings_stats);
 } else if (qlcnic_83xx_check(adapter)) {
  len = qlcnic_83xx_statistics(adapter);
 }

 return len;
}
