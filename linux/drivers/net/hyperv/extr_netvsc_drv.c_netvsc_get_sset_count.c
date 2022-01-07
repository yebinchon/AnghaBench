
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {int dummy; } ;
struct net_device_context {int nvdev; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;

 int NETVSC_GLOBAL_STATS_LEN ;
 int NETVSC_PCPU_STATS_LEN ;
 int NETVSC_QUEUE_STATS_LEN (struct netvsc_device*) ;
 int NETVSC_VF_STATS_LEN ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 struct netvsc_device* rtnl_dereference (int ) ;

__attribute__((used)) static int netvsc_get_sset_count(struct net_device *dev, int string_set)
{
 struct net_device_context *ndc = netdev_priv(dev);
 struct netvsc_device *nvdev = rtnl_dereference(ndc->nvdev);

 if (!nvdev)
  return -ENODEV;

 switch (string_set) {
 case 128:
  return NETVSC_GLOBAL_STATS_LEN
   + NETVSC_VF_STATS_LEN
   + NETVSC_QUEUE_STATS_LEN(nvdev)
   + NETVSC_PCPU_STATS_LEN;
 default:
  return -EINVAL;
 }
}
