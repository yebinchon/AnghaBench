
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINVAL ;



 int IXGBEVF_PRIV_FLAGS_STR_LEN ;
 int IXGBEVF_STATS_LEN ;
 int IXGBEVF_TEST_LEN ;

__attribute__((used)) static int ixgbevf_get_sset_count(struct net_device *netdev, int stringset)
{
 switch (stringset) {
 case 128:
  return IXGBEVF_TEST_LEN;
 case 129:
  return IXGBEVF_STATS_LEN;
 case 130:
  return IXGBEVF_PRIV_FLAGS_STR_LEN;
 default:
  return -EINVAL;
 }
}
