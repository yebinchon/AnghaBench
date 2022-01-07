
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct ice_vsi {TYPE_4__* netdev; TYPE_3__* port_info; } ;
struct ice_pf {TYPE_1__* pdev; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_9__ {scalar_t__ reg_state; } ;
struct TYPE_7__ {int * perm_addr; } ;
struct TYPE_8__ {TYPE_2__ mac; } ;
struct TYPE_6__ {int dev; } ;


 int EINVAL ;
 int EIO ;
 int ETH_ALEN ;
 scalar_t__ NETREG_REGISTERED ;
 int dev_err (int *,char*,int) ;
 int eth_broadcast_addr (int *) ;
 int free_netdev (TYPE_4__*) ;
 struct ice_vsi* ice_get_main_vsi (struct ice_pf*) ;
 int ice_vsi_cfg_mac_fltr (struct ice_vsi*,int *,int) ;
 int unregister_netdev (TYPE_4__*) ;

__attribute__((used)) static int ice_init_mac_fltr(struct ice_pf *pf)
{
 enum ice_status status;
 u8 broadcast[ETH_ALEN];
 struct ice_vsi *vsi;

 vsi = ice_get_main_vsi(pf);
 if (!vsi)
  return -EINVAL;






 status = ice_vsi_cfg_mac_fltr(vsi, vsi->port_info->mac.perm_addr, 1);
 if (status)
  goto unregister;




 eth_broadcast_addr(broadcast);
 status = ice_vsi_cfg_mac_fltr(vsi, broadcast, 1);
 if (status)
  goto unregister;

 return 0;
unregister:



 if (status && vsi->netdev->reg_state == NETREG_REGISTERED) {
  dev_err(&pf->pdev->dev,
   "Could not add MAC filters error %d. Unregistering device\n",
   status);
  unregister_netdev(vsi->netdev);
  free_netdev(vsi->netdev);
  vsi->netdev = ((void*)0);
 }

 return -EIO;
}
