
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EOPNOTSUPP ;



 int ICE_ALL_STATS_LEN (struct net_device*) ;
 int ICE_PRIV_FLAG_ARRAY_SIZE ;
 int ICE_TEST_LEN ;

__attribute__((used)) static int ice_get_sset_count(struct net_device *netdev, int sset)
{
 switch (sset) {
 case 129:
  return ICE_ALL_STATS_LEN(netdev);
 case 128:
  return ICE_TEST_LEN;
 case 130:
  return ICE_PRIV_FLAG_ARRAY_SIZE;
 default:
  return -EOPNOTSUPP;
 }
}
