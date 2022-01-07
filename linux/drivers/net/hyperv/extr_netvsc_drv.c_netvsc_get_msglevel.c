
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device_context {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct net_device_context* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 netvsc_get_msglevel(struct net_device *ndev)
{
 struct net_device_context *ndev_ctx = netdev_priv(ndev);

 return ndev_ctx->msg_enable;
}
