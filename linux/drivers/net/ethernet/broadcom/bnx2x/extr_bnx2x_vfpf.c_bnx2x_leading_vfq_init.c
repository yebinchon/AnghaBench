
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x_virtf {int leading_rss; int filter_state; int rss_conf_obj; int mcast_obj; int vf_vlans_pool; int vf_macs_pool; int abs_vfid; } ;
struct bnx2x_vf_queue {int is_leading; int sp_initialized; int cid; int vlan_mac_obj; int vlan_obj; int mac_obj; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_FILTER_MAC_PENDING ;
 int BNX2X_FILTER_MCAST_PENDING ;
 int BNX2X_FILTER_RSS_CONF_PENDING ;
 int BNX2X_FILTER_VLAN_MAC_PENDING ;
 int BNX2X_FILTER_VLAN_PENDING ;
 int BNX2X_OBJ_TYPE_RX_TX ;
 int FW_VF_HANDLE (int ) ;
 int bnx2x_init_mac_obj (struct bnx2x*,int *,int ,int ,int ,int ,int ,int ,int *,int ,int *) ;
 int bnx2x_init_mcast_obj (struct bnx2x*,int *,int ,int ,int ,int ,int ,int ,int ,int *,int ) ;
 int bnx2x_init_rss_config_obj (struct bnx2x*,int *,int ,int ,int ,int ,int ,int ,int ,int *,int ) ;
 int bnx2x_init_vlan_mac_obj (struct bnx2x*,int *,int ,int ,int ,int ,int ,int ,int *,int ,int *,int *) ;
 int bnx2x_init_vlan_obj (struct bnx2x*,int *,int ,int ,int ,int ,int ,int ,int *,int ,int *) ;
 int bnx2x_vf_sp (struct bnx2x*,struct bnx2x_virtf*,int ) ;
 int bnx2x_vf_sp_map (struct bnx2x*,struct bnx2x_virtf*,int ) ;
 int mac_rdata ;
 int mcast_rdata ;
 int rss_rdata ;
 int vfq_cl_id (struct bnx2x_virtf*,struct bnx2x_vf_queue*) ;
 int vlan_mac_rdata ;
 int vlan_rdata ;

__attribute__((used)) static void bnx2x_leading_vfq_init(struct bnx2x *bp, struct bnx2x_virtf *vf,
       struct bnx2x_vf_queue *q)
{
 u8 cl_id = vfq_cl_id(vf, q);
 u8 func_id = FW_VF_HANDLE(vf->abs_vfid);


 bnx2x_init_mac_obj(bp, &q->mac_obj,
      cl_id, q->cid, func_id,
      bnx2x_vf_sp(bp, vf, mac_rdata),
      bnx2x_vf_sp_map(bp, vf, mac_rdata),
      BNX2X_FILTER_MAC_PENDING,
      &vf->filter_state,
      BNX2X_OBJ_TYPE_RX_TX,
      &vf->vf_macs_pool);

 bnx2x_init_vlan_obj(bp, &q->vlan_obj,
       cl_id, q->cid, func_id,
       bnx2x_vf_sp(bp, vf, vlan_rdata),
       bnx2x_vf_sp_map(bp, vf, vlan_rdata),
       BNX2X_FILTER_VLAN_PENDING,
       &vf->filter_state,
       BNX2X_OBJ_TYPE_RX_TX,
       &vf->vf_vlans_pool);

 bnx2x_init_vlan_mac_obj(bp, &q->vlan_mac_obj,
    cl_id, q->cid, func_id,
    bnx2x_vf_sp(bp, vf, vlan_mac_rdata),
    bnx2x_vf_sp_map(bp, vf, vlan_mac_rdata),
    BNX2X_FILTER_VLAN_MAC_PENDING,
    &vf->filter_state,
    BNX2X_OBJ_TYPE_RX_TX,
    &vf->vf_macs_pool,
    &vf->vf_vlans_pool);

 bnx2x_init_mcast_obj(bp, &vf->mcast_obj, cl_id,
        q->cid, func_id, func_id,
        bnx2x_vf_sp(bp, vf, mcast_rdata),
        bnx2x_vf_sp_map(bp, vf, mcast_rdata),
        BNX2X_FILTER_MCAST_PENDING,
        &vf->filter_state,
        BNX2X_OBJ_TYPE_RX_TX);


 bnx2x_init_rss_config_obj(bp, &vf->rss_conf_obj, cl_id, q->cid,
      func_id, func_id,
      bnx2x_vf_sp(bp, vf, rss_rdata),
      bnx2x_vf_sp_map(bp, vf, rss_rdata),
      BNX2X_FILTER_RSS_CONF_PENDING,
      &vf->filter_state,
      BNX2X_OBJ_TYPE_RX_TX);

 vf->leading_rss = cl_id;
 q->is_leading = 1;
 q->sp_initialized = 1;
}
