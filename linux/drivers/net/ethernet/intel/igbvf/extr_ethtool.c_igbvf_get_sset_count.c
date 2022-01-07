
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINVAL ;


 int IGBVF_GLOBAL_STATS_LEN ;
 int IGBVF_TEST_LEN ;

__attribute__((used)) static int igbvf_get_sset_count(struct net_device *dev, int stringset)
{
 switch (stringset) {
 case 128:
  return IGBVF_TEST_LEN;
 case 129:
  return IGBVF_GLOBAL_STATS_LEN;
 default:
  return -EINVAL;
 }
}
