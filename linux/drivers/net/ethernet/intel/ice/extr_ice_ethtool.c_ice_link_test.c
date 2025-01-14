
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_2__ {int port_info; } ;


 int ice_get_link_status (int ,int*) ;
 int netdev_err (struct net_device*,char*,int) ;
 int netdev_info (struct net_device*,char*) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u64 ice_link_test(struct net_device *netdev)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 enum ice_status status;
 bool link_up = 0;

 netdev_info(netdev, "link test\n");
 status = ice_get_link_status(np->vsi->port_info, &link_up);
 if (status) {
  netdev_err(netdev, "link query error, status = %d\n", status);
  return 1;
 }

 if (!link_up)
  return 2;

 return 0;
}
