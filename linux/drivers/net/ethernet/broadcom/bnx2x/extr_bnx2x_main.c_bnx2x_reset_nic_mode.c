
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {scalar_t__ mf_mode; int link_params; } ;


 int BNX2X_ERR (char*) ;
 int BP_PORT (struct bnx2x*) ;
 int DP (int ,char*) ;
 int NETIF_MSG_IFUP ;
 scalar_t__ NIG_REG_LLH0_FUNC_EN ;
 scalar_t__ NIG_REG_LLH0_FUNC_MEM_ENABLE ;
 scalar_t__ NIG_REG_LLH1_FUNC_EN ;
 scalar_t__ NIG_REG_LLH1_FUNC_MEM_ENABLE ;
 scalar_t__ NIG_REG_P0_TX_MNG_HOST_ENABLE ;
 scalar_t__ NIG_REG_P1_TX_MNG_HOST_ENABLE ;
 int NUM_MACS ;
 scalar_t__ PRS_REG_NIC_MODE ;
 int REG_RD (struct bnx2x*,scalar_t__) ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 scalar_t__ SINGLE_FUNCTION ;
 int bnx2x_func_switch_update (struct bnx2x*,int) ;
 int bnx2x_set_rx_filter (int *,int) ;

__attribute__((used)) static int bnx2x_reset_nic_mode(struct bnx2x *bp)
{
 int rc, i, port = BP_PORT(bp);
 int vlan_en = 0, mac_en[NUM_MACS];


 if (bp->mf_mode == SINGLE_FUNCTION) {
  bnx2x_set_rx_filter(&bp->link_params, 0);
 } else {
  vlan_en = REG_RD(bp, port ? NIG_REG_LLH1_FUNC_EN :
       NIG_REG_LLH0_FUNC_EN);
  REG_WR(bp, port ? NIG_REG_LLH1_FUNC_EN :
     NIG_REG_LLH0_FUNC_EN, 0);
  for (i = 0; i < NUM_MACS; i++) {
   mac_en[i] = REG_RD(bp, port ?
          (NIG_REG_LLH1_FUNC_MEM_ENABLE +
           4 * i) :
          (NIG_REG_LLH0_FUNC_MEM_ENABLE +
           4 * i));
   REG_WR(bp, port ? (NIG_REG_LLH1_FUNC_MEM_ENABLE +
           4 * i) :
      (NIG_REG_LLH0_FUNC_MEM_ENABLE + 4 * i), 0);
  }
 }


 REG_WR(bp, port ? NIG_REG_P0_TX_MNG_HOST_ENABLE :
        NIG_REG_P1_TX_MNG_HOST_ENABLE, 0);






 rc = bnx2x_func_switch_update(bp, 1);
 if (rc) {
  BNX2X_ERR("Can't suspend tx-switching!\n");
  return rc;
 }


 REG_WR(bp, PRS_REG_NIC_MODE, 0);


 if (bp->mf_mode == SINGLE_FUNCTION) {
  bnx2x_set_rx_filter(&bp->link_params, 1);
 } else {
  REG_WR(bp, port ? NIG_REG_LLH1_FUNC_EN :
     NIG_REG_LLH0_FUNC_EN, vlan_en);
  for (i = 0; i < NUM_MACS; i++) {
   REG_WR(bp, port ? (NIG_REG_LLH1_FUNC_MEM_ENABLE +
           4 * i) :
      (NIG_REG_LLH0_FUNC_MEM_ENABLE + 4 * i),
      mac_en[i]);
  }
 }


 REG_WR(bp, port ? NIG_REG_P0_TX_MNG_HOST_ENABLE :
        NIG_REG_P1_TX_MNG_HOST_ENABLE, 1);


 rc = bnx2x_func_switch_update(bp, 0);
 if (rc) {
  BNX2X_ERR("Can't resume tx-switching!\n");
  return rc;
 }

 DP(NETIF_MSG_IFUP, "NIC MODE disabled\n");
 return 0;
}
