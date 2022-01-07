
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ENOTSUPP ;



 int IGB_PRIV_FLAGS_STR_LEN ;
 int IGB_STATS_LEN ;
 int IGB_TEST_LEN ;

__attribute__((used)) static int igb_get_sset_count(struct net_device *netdev, int sset)
{
 switch (sset) {
 case 129:
  return IGB_STATS_LEN;
 case 128:
  return IGB_TEST_LEN;
 case 130:
  return IGB_PRIV_FLAGS_STR_LEN;
 default:
  return -ENOTSUPP;
 }
}
