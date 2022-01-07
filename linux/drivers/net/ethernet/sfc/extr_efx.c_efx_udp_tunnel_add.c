
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct udp_tunnel_info {int port; int type; } ;
struct net_device {int dummy; } ;
struct efx_udp_tunnel {int port; scalar_t__ type; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* udp_tnl_add_port ) (struct efx_nic*,struct efx_udp_tunnel) ;} ;


 int efx_udp_tunnel_type_map (int ) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct efx_nic*,struct efx_udp_tunnel) ;

__attribute__((used)) static void efx_udp_tunnel_add(struct net_device *dev, struct udp_tunnel_info *ti)
{
 struct efx_nic *efx = netdev_priv(dev);
 struct efx_udp_tunnel tnl;
 int efx_tunnel_type;

 efx_tunnel_type = efx_udp_tunnel_type_map(ti->type);
 if (efx_tunnel_type < 0)
  return;

 tnl.type = (u16)efx_tunnel_type;
 tnl.port = ti->port;

 if (efx->type->udp_tnl_add_port)
  (void)efx->type->udp_tnl_add_port(efx, tnl);
}
