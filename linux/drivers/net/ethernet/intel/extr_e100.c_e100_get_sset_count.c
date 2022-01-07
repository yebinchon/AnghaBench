
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int E100_STATS_LEN ;
 int E100_TEST_LEN ;
 int EOPNOTSUPP ;



__attribute__((used)) static int e100_get_sset_count(struct net_device *netdev, int sset)
{
 switch (sset) {
 case 128:
  return E100_TEST_LEN;
 case 129:
  return E100_STATS_LEN;
 default:
  return -EOPNOTSUPP;
 }
}
