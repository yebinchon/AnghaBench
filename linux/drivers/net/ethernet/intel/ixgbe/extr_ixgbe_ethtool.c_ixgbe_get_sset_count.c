
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EOPNOTSUPP ;



 int IXGBE_PRIV_FLAGS_STR_LEN ;
 int IXGBE_STATS_LEN ;
 int IXGBE_TEST_LEN ;

__attribute__((used)) static int ixgbe_get_sset_count(struct net_device *netdev, int sset)
{
 switch (sset) {
 case 128:
  return IXGBE_TEST_LEN;
 case 129:
  return IXGBE_STATS_LEN;
 case 130:
  return IXGBE_PRIV_FLAGS_STR_LEN;
 default:
  return -EOPNOTSUPP;
 }
}
