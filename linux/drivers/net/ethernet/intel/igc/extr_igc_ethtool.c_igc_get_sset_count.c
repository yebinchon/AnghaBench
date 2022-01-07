
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ENOTSUPP ;



 int IGC_PRIV_FLAGS_STR_LEN ;
 int IGC_STATS_LEN ;
 int IGC_TEST_LEN ;

__attribute__((used)) static int igc_get_sset_count(struct net_device *netdev, int sset)
{
 switch (sset) {
 case 129:
  return IGC_STATS_LEN;
 case 128:
  return IGC_TEST_LEN;
 case 130:
  return IGC_PRIV_FLAGS_STR_LEN;
 default:
  return -ENOTSUPP;
 }
}
