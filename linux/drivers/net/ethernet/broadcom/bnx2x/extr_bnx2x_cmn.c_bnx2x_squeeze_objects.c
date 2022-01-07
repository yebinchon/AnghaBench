
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x_vlan_mac_obj {int (* delete_all ) (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long*,unsigned long*) ;} ;
struct bnx2x_mcast_ramrod_params {unsigned long ramrod_flags; int * mcast_obj; int * member_0; } ;
struct bnx2x {int dev; int mcast_obj; TYPE_1__* sp_objs; } ;
struct TYPE_2__ {struct bnx2x_vlan_mac_obj mac_obj; } ;


 int BNX2X_ERR (char*,int) ;
 int BNX2X_ETH_MAC ;
 int BNX2X_MCAST_CMD_CONT ;
 int BNX2X_MCAST_CMD_DEL ;
 int BNX2X_UC_LIST_MAC ;
 int RAMROD_COMP_WAIT ;
 int RAMROD_DRV_CLR_ONLY ;
 int __set_bit (int ,unsigned long*) ;
 int bnx2x_config_mcast (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int ) ;
 int netif_addr_lock_bh (int ) ;
 int netif_addr_unlock_bh (int ) ;
 int stub1 (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long*,unsigned long*) ;
 int stub2 (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long*,unsigned long*) ;

void bnx2x_squeeze_objects(struct bnx2x *bp)
{
 int rc;
 unsigned long ramrod_flags = 0, vlan_mac_flags = 0;
 struct bnx2x_mcast_ramrod_params rparam = {((void*)0)};
 struct bnx2x_vlan_mac_obj *mac_obj = &bp->sp_objs->mac_obj;




 __set_bit(RAMROD_COMP_WAIT, &ramrod_flags);

 __set_bit(RAMROD_DRV_CLR_ONLY, &ramrod_flags);


 __set_bit(BNX2X_ETH_MAC, &vlan_mac_flags);
 rc = mac_obj->delete_all(bp, &bp->sp_objs->mac_obj, &vlan_mac_flags,
     &ramrod_flags);
 if (rc != 0)
  BNX2X_ERR("Failed to clean ETH MACs: %d\n", rc);


 vlan_mac_flags = 0;
 __set_bit(BNX2X_UC_LIST_MAC, &vlan_mac_flags);
 rc = mac_obj->delete_all(bp, mac_obj, &vlan_mac_flags,
     &ramrod_flags);
 if (rc != 0)
  BNX2X_ERR("Failed to clean UC list MACs: %d\n", rc);


 rparam.mcast_obj = &bp->mcast_obj;
 __set_bit(RAMROD_DRV_CLR_ONLY, &rparam.ramrod_flags);





 netif_addr_lock_bh(bp->dev);
 rc = bnx2x_config_mcast(bp, &rparam, BNX2X_MCAST_CMD_DEL);
 if (rc < 0)
  BNX2X_ERR("Failed to add a new DEL command to a multi-cast object: %d\n",
     rc);


 rc = bnx2x_config_mcast(bp, &rparam, BNX2X_MCAST_CMD_CONT);
 while (rc != 0) {
  if (rc < 0) {
   BNX2X_ERR("Failed to clean multi-cast object: %d\n",
      rc);
   netif_addr_unlock_bh(bp->dev);
   return;
  }

  rc = bnx2x_config_mcast(bp, &rparam, BNX2X_MCAST_CMD_CONT);
 }
 netif_addr_unlock_bh(bp->dev);
}
