
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct ice_vsi {int idx; int port_info; struct ice_pf* back; } ;
struct ice_tlan_ctx {int member_0; } ;
struct ice_ring {scalar_t__ reg_idx; int txq_teid; scalar_t__ q_handle; scalar_t__ tail; } ;
struct TYPE_3__ {scalar_t__ hw_addr; } ;
struct ice_pf {TYPE_2__* pdev; TYPE_1__ hw; } ;
struct ice_aqc_add_txqs_perq {int q_teid; int txq_id; int txq_ctx; } ;
struct ice_aqc_add_tx_qgrp {struct ice_aqc_add_txqs_perq* txqs; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_4__ {int dev; } ;


 int ENODEV ;
 scalar_t__ QTX_COMM_DBELL (scalar_t__) ;
 int cpu_to_le16 (scalar_t__) ;
 int dev_err (int *,char*,int) ;
 int ice_ena_vsi_txq (int ,int ,int,scalar_t__,int,struct ice_aqc_add_tx_qgrp*,int,int *) ;
 int ice_set_ctx (int*,int ,int ) ;
 int ice_setup_tx_ctx (struct ice_ring*,struct ice_tlan_ctx*,scalar_t__) ;
 int ice_tlan_ctx_info ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int
ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_ring *ring, u16 tc_q_idx,
  struct ice_aqc_add_tx_qgrp *qg_buf, u8 tc)
{
 struct ice_tlan_ctx tlan_ctx = { 0 };
 struct ice_aqc_add_txqs_perq *txq;
 struct ice_pf *pf = vsi->back;
 u8 buf_len = sizeof(*qg_buf);
 enum ice_status status;
 u16 pf_q;

 pf_q = ring->reg_idx;
 ice_setup_tx_ctx(ring, &tlan_ctx, pf_q);

 qg_buf->txqs[0].txq_id = cpu_to_le16(pf_q);
 ice_set_ctx((u8 *)&tlan_ctx, qg_buf->txqs[0].txq_ctx,
      ice_tlan_ctx_info);




 ring->tail = pf->hw.hw_addr + QTX_COMM_DBELL(pf_q);




 ring->q_handle = tc_q_idx;

 status = ice_ena_vsi_txq(vsi->port_info, vsi->idx, tc, ring->q_handle,
     1, qg_buf, buf_len, ((void*)0));
 if (status) {
  dev_err(&pf->pdev->dev,
   "Failed to set LAN Tx queue context, error: %d\n",
   status);
  return -ENODEV;
 }





 txq = &qg_buf->txqs[0];
 if (pf_q == le16_to_cpu(txq->txq_id))
  ring->txq_teid = le32_to_cpu(txq->q_teid);

 return 0;
}
