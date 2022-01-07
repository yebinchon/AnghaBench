
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsaf_device {int dsaf_ver; } ;


 int AE_IS_VER1 (int ) ;
 int DSAF_STATIC_NUM ;
 int DSAF_V2_STATIC_NUM ;
 int ETH_SS_STATS ;

int hns_dsaf_get_sset_count(struct dsaf_device *dsaf_dev, int stringset)
{
 bool is_ver1 = AE_IS_VER1(dsaf_dev->dsaf_ver);

 if (stringset == ETH_SS_STATS) {
  if (is_ver1)
   return DSAF_STATIC_NUM;
  else
   return DSAF_V2_STATIC_NUM;
 }
 return 0;
}
