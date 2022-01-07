
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int mcast_obj; int abs_vfid; } ;
struct bnx2x_mcast_ramrod_params {int mcast_list_len; int mcast_list; int ramrod_flags; int * mcast_obj; } ;
struct bnx2x_mcast_list_elem {int link; int mac; } ;
struct bnx2x {int dummy; } ;
typedef int bnx2x_mac_addr_t ;


 int BNX2X_ERR (char*) ;
 int BNX2X_MCAST_CMD_DEL ;
 int BNX2X_MCAST_CMD_SET ;
 int BNX2X_MSG_IOV ;
 int DP (int ,char*,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RAMROD_COMP_WAIT ;
 int RAMROD_DRV_CLR_ONLY ;
 int bnx2x_config_mcast (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int ) ;
 struct bnx2x_mcast_list_elem* kcalloc (int,int,int ) ;
 int kfree (struct bnx2x_mcast_list_elem*) ;
 int list_add_tail (int *,int *) ;
 int memset (struct bnx2x_mcast_ramrod_params*,int ,int) ;
 int set_bit (int ,int *) ;

int bnx2x_vf_mcast(struct bnx2x *bp, struct bnx2x_virtf *vf,
     bnx2x_mac_addr_t *mcasts, int mc_num, bool drv_only)
{
 struct bnx2x_mcast_list_elem *mc = ((void*)0);
 struct bnx2x_mcast_ramrod_params mcast;
 int rc, i;

 DP(BNX2X_MSG_IOV, "vf[%d]\n", vf->abs_vfid);


 memset(&mcast, 0, sizeof(struct bnx2x_mcast_ramrod_params));
 mcast.mcast_obj = &vf->mcast_obj;
 if (drv_only)
  set_bit(RAMROD_DRV_CLR_ONLY, &mcast.ramrod_flags);
 else
  set_bit(RAMROD_COMP_WAIT, &mcast.ramrod_flags);
 if (mc_num) {
  mc = kcalloc(mc_num, sizeof(struct bnx2x_mcast_list_elem),
        GFP_KERNEL);
  if (!mc) {
   BNX2X_ERR("Cannot Configure multicasts due to lack of memory\n");
   return -ENOMEM;
  }
 }

 if (mc_num) {
  INIT_LIST_HEAD(&mcast.mcast_list);
  for (i = 0; i < mc_num; i++) {
   mc[i].mac = mcasts[i];
   list_add_tail(&mc[i].link,
          &mcast.mcast_list);
  }


  mcast.mcast_list_len = mc_num;
  rc = bnx2x_config_mcast(bp, &mcast, BNX2X_MCAST_CMD_SET);
  if (rc)
   BNX2X_ERR("Failed to set multicasts\n");
 } else {

  rc = bnx2x_config_mcast(bp, &mcast, BNX2X_MCAST_CMD_DEL);
  if (rc)
   BNX2X_ERR("Failed to remove multicasts\n");
 }

 kfree(mc);

 return rc;
}
