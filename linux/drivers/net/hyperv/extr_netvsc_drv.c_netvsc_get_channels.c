
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {int num_chn; int max_chn; } ;
struct net_device_context {int nvdev; } ;
struct net_device {int dummy; } ;
struct ethtool_channels {int combined_count; int max_combined; } ;


 struct net_device_context* netdev_priv (struct net_device*) ;
 struct netvsc_device* rtnl_dereference (int ) ;

__attribute__((used)) static void netvsc_get_channels(struct net_device *net,
    struct ethtool_channels *channel)
{
 struct net_device_context *net_device_ctx = netdev_priv(net);
 struct netvsc_device *nvdev = rtnl_dereference(net_device_ctx->nvdev);

 if (nvdev) {
  channel->max_combined = nvdev->max_chn;
  channel->combined_count = nvdev->num_chn;
 }
}
