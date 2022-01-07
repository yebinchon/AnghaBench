
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x {int vlan_credit; int sp_state; TYPE_1__* fp; int rss_conf_obj; int vlans_pool; int macs_pool; int mcast_obj; int rx_mode_obj; } ;
struct TYPE_2__ {int cid; int cl_id; } ;


 int BNX2X_FILTER_MCAST_PENDING ;
 int BNX2X_FILTER_RSS_CONF_PENDING ;
 int BNX2X_OBJ_TYPE_RX ;
 int BP_FUNC (struct bnx2x*) ;
 int PF_VLAN_CREDIT_E2 (struct bnx2x*,int ) ;
 int bnx2x_get_path_func_num (struct bnx2x*) ;
 int bnx2x_init_mac_credit_pool (struct bnx2x*,int *,int ,int ) ;
 int bnx2x_init_mcast_obj (struct bnx2x*,int *,int ,int ,int ,int ,int ,int ,int ,int *,int ) ;
 int bnx2x_init_rss_config_obj (struct bnx2x*,int *,int ,int ,int ,int ,int ,int ,int ,int *,int ) ;
 int bnx2x_init_rx_mode_obj (struct bnx2x*,int *) ;
 int bnx2x_init_vlan_credit_pool (struct bnx2x*,int *,int ,int ) ;
 int bnx2x_sp (struct bnx2x*,int ) ;
 int bnx2x_sp_mapping (struct bnx2x*,int ) ;
 int mcast_rdata ;
 int rss_rdata ;

__attribute__((used)) static inline void bnx2x_init_bp_objs(struct bnx2x *bp)
{

 bnx2x_init_rx_mode_obj(bp, &bp->rx_mode_obj);


 bnx2x_init_mcast_obj(bp, &bp->mcast_obj, bp->fp->cl_id, bp->fp->cid,
        BP_FUNC(bp), BP_FUNC(bp),
        bnx2x_sp(bp, mcast_rdata),
        bnx2x_sp_mapping(bp, mcast_rdata),
        BNX2X_FILTER_MCAST_PENDING, &bp->sp_state,
        BNX2X_OBJ_TYPE_RX);


 bnx2x_init_mac_credit_pool(bp, &bp->macs_pool, BP_FUNC(bp),
       bnx2x_get_path_func_num(bp));

 bnx2x_init_vlan_credit_pool(bp, &bp->vlans_pool, BP_FUNC(bp),
        bnx2x_get_path_func_num(bp));


 bnx2x_init_rss_config_obj(bp, &bp->rss_conf_obj, bp->fp->cl_id,
      bp->fp->cid, BP_FUNC(bp), BP_FUNC(bp),
      bnx2x_sp(bp, rss_rdata),
      bnx2x_sp_mapping(bp, rss_rdata),
      BNX2X_FILTER_RSS_CONF_PENDING, &bp->sp_state,
      BNX2X_OBJ_TYPE_RX);

 bp->vlan_credit = PF_VLAN_CREDIT_E2(bp, bnx2x_get_path_func_num(bp));
}
