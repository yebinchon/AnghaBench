
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;


 unsigned long NETDEV_UNREGISTER ;
 int NOTIFY_OK ;
 int nfp_flower_free_internal_port_id (struct nfp_app*,struct net_device*) ;
 scalar_t__ nfp_flower_internal_port_can_offload (struct nfp_app*,struct net_device*) ;

__attribute__((used)) static int
nfp_flower_internal_port_event_handler(struct nfp_app *app,
           struct net_device *netdev,
           unsigned long event)
{
 if (event == NETDEV_UNREGISTER &&
     nfp_flower_internal_port_can_offload(app, netdev))
  nfp_flower_free_internal_port_id(app, netdev);

 return NOTIFY_OK;
}
