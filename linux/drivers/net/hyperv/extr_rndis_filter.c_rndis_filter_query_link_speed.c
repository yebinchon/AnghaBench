
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rndis_device {int ndev; } ;
struct netvsc_device {int dummy; } ;
struct net_device_context {int speed; } ;


 int RNDIS_OID_GEN_LINK_SPEED ;
 struct net_device_context* netdev_priv (int ) ;
 int rndis_filter_query_device (struct rndis_device*,struct netvsc_device*,int ,int*,int*) ;

__attribute__((used)) static int rndis_filter_query_link_speed(struct rndis_device *dev,
      struct netvsc_device *net_device)
{
 u32 size = sizeof(u32);
 u32 link_speed;
 struct net_device_context *ndc;
 int ret;

 ret = rndis_filter_query_device(dev, net_device,
     RNDIS_OID_GEN_LINK_SPEED,
     &link_speed, &size);

 if (!ret) {
  ndc = netdev_priv(dev->ndev);




  ndc->speed = link_speed / 10000;
 }

 return ret;
}
