
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;

 int fec_stats ;

__attribute__((used)) static int fec_enet_get_sset_count(struct net_device *dev, int sset)
{
 switch (sset) {
 case 128:
  return ARRAY_SIZE(fec_stats);
 default:
  return -EOPNOTSUPP;
 }
}
