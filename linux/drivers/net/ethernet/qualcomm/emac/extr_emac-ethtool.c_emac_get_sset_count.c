
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EMAC_STATS_LEN ;
 int EOPNOTSUPP ;



__attribute__((used)) static int emac_get_sset_count(struct net_device *netdev, int sset)
{
 switch (sset) {
 case 129:
  return 1;
 case 128:
  return EMAC_STATS_LEN;
 default:
  return -EOPNOTSUPP;
 }
}
