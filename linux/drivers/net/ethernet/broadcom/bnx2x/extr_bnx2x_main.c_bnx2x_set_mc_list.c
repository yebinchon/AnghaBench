
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnx2x_mcast_ramrod_params {int * mcast_obj; int * member_0; } ;
struct bnx2x {int mcast_obj; struct net_device* dev; } ;


 int BNX2X_ERR (char*,int) ;
 int BNX2X_MCAST_CMD_DEL ;
 int BNX2X_MCAST_CMD_SET ;
 scalar_t__ CHIP_IS_E1x (struct bnx2x*) ;
 int LIST_HEAD (int ) ;
 int bnx2x_config_mcast (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int ) ;
 int bnx2x_free_mcast_macs_list (int *) ;
 int bnx2x_init_mcast_macs_list (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int *) ;
 int bnx2x_set_mc_list_e1x (struct bnx2x*) ;
 int mcast_group_list ;
 scalar_t__ netdev_mc_count (struct net_device*) ;

__attribute__((used)) static int bnx2x_set_mc_list(struct bnx2x *bp)
{
 LIST_HEAD(mcast_group_list);
 struct bnx2x_mcast_ramrod_params rparam = {((void*)0)};
 struct net_device *dev = bp->dev;
 int rc = 0;


 if (CHIP_IS_E1x(bp))
  return bnx2x_set_mc_list_e1x(bp);

 rparam.mcast_obj = &bp->mcast_obj;

 if (netdev_mc_count(dev)) {
  rc = bnx2x_init_mcast_macs_list(bp, &rparam, &mcast_group_list);
  if (rc)
   return rc;


  rc = bnx2x_config_mcast(bp, &rparam,
     BNX2X_MCAST_CMD_SET);
  if (rc < 0)
   BNX2X_ERR("Failed to set a new multicast configuration: %d\n",
      rc);

  bnx2x_free_mcast_macs_list(&mcast_group_list);
 } else {

  rc = bnx2x_config_mcast(bp, &rparam, BNX2X_MCAST_CMD_DEL);
  if (rc < 0)
   BNX2X_ERR("Failed to clear multicast configuration %d\n",
      rc);
 }

 return rc;
}
