
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int index; unsigned int evq; unsigned int buf_count; unsigned int label; int addr; } ;
struct TYPE_6__ {TYPE_2__ init_txq; } ;
struct vfdi_req {TYPE_3__ u; } ;
struct TYPE_4__ {struct vfdi_req* addr; } ;
struct siena_vf {scalar_t__ tx_filter_mode; int txq_lock; int txq_count; int txq_mask; int pci_name; TYPE_1__ buf; struct efx_nic* efx; } ;
struct efx_nic {int vi_scale; int net_dev; } ;
typedef int efx_oword_t ;


 unsigned int EFX_BUFTBL_TXQ_BASE (struct siena_vf*,unsigned int) ;
 unsigned int EFX_FIELD_MASK (int ) ;
 int EFX_MAX_DMAQ_SIZE ;
 int EFX_POPULATE_OWORD_8 (int ,int ,int ,int ,unsigned int,int ,int,int ,unsigned int,int ,int ,int ,unsigned int,int ,int ,int ,int) ;
 int FRF_AZ_TX_DESCQ_BUF_BASE_ID ;
 int FRF_AZ_TX_DESCQ_EN ;
 int FRF_AZ_TX_DESCQ_EVQ_ID ;
 int FRF_AZ_TX_DESCQ_LABEL ;
 int FRF_AZ_TX_DESCQ_SIZE ;
 int FRF_BZ_TX_NON_IP_DROP_DIS ;
 int FRF_CZ_TX_DPT_ETH_FILT_EN ;
 int FRF_CZ_TX_DPT_Q_MASK_WIDTH ;
 int FR_BZ_TX_DESC_PTR_TBL ;
 int VFDI_RC_EINVAL ;
 int VFDI_RC_SUCCESS ;
 scalar_t__ VF_TX_FILTER_ON ;
 int __ffs (unsigned int) ;
 scalar_t__ __test_and_set_bit (unsigned int,int ) ;
 int abs_index (struct siena_vf*,unsigned int) ;
 scalar_t__ bad_buf_count (unsigned int,int ) ;
 scalar_t__ bad_vf_index (struct efx_nic*,unsigned int) ;
 int efx_siena_sriov_bufs (struct efx_nic*,unsigned int,int ,unsigned int) ;
 int efx_writeo_table (struct efx_nic*,int *,int ,int ) ;
 int hw ;
 int min (int ,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ net_ratelimit () ;
 int netif_err (struct efx_nic*,int ,int ,char*,int ,unsigned int,unsigned int,unsigned int) ;
 unsigned int vf_max_tx_channels ;

__attribute__((used)) static int efx_vfdi_init_txq(struct siena_vf *vf)
{
 struct efx_nic *efx = vf->efx;
 struct vfdi_req *req = vf->buf.addr;
 unsigned vf_txq = req->u.init_txq.index;
 unsigned vf_evq = req->u.init_txq.evq;
 unsigned buf_count = req->u.init_txq.buf_count;
 unsigned buftbl = EFX_BUFTBL_TXQ_BASE(vf, vf_txq);
 unsigned label, eth_filt_en;
 efx_oword_t reg;

 if (bad_vf_index(efx, vf_evq) || bad_vf_index(efx, vf_txq) ||
     vf_txq >= vf_max_tx_channels ||
     bad_buf_count(buf_count, EFX_MAX_DMAQ_SIZE)) {
  if (net_ratelimit())
   netif_err(efx, hw, efx->net_dev,
      "ERROR: Invalid INIT_TXQ from %s: txq %d evq %d "
      "buf_count %d\n", vf->pci_name, vf_txq,
      vf_evq, buf_count);
  return VFDI_RC_EINVAL;
 }

 mutex_lock(&vf->txq_lock);
 if (__test_and_set_bit(req->u.init_txq.index, vf->txq_mask))
  ++vf->txq_count;
 mutex_unlock(&vf->txq_lock);
 efx_siena_sriov_bufs(efx, buftbl, req->u.init_txq.addr, buf_count);

 eth_filt_en = vf->tx_filter_mode == VF_TX_FILTER_ON;

 label = req->u.init_txq.label & EFX_FIELD_MASK(FRF_AZ_TX_DESCQ_LABEL);
 EFX_POPULATE_OWORD_8(reg,
        FRF_CZ_TX_DPT_Q_MASK_WIDTH, min(efx->vi_scale, 1U),
        FRF_CZ_TX_DPT_ETH_FILT_EN, eth_filt_en,
        FRF_AZ_TX_DESCQ_EN, 1,
        FRF_AZ_TX_DESCQ_BUF_BASE_ID, buftbl,
        FRF_AZ_TX_DESCQ_EVQ_ID, abs_index(vf, vf_evq),
        FRF_AZ_TX_DESCQ_LABEL, label,
        FRF_AZ_TX_DESCQ_SIZE, __ffs(buf_count),
        FRF_BZ_TX_NON_IP_DROP_DIS, 1);
 efx_writeo_table(efx, &reg, FR_BZ_TX_DESC_PTR_TBL,
    abs_index(vf, vf_txq));

 return VFDI_RC_SUCCESS;
}
