
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int index; unsigned int evq; unsigned int buf_count; unsigned int label; int flags; int addr; } ;
struct TYPE_6__ {TYPE_2__ init_rxq; } ;
struct vfdi_req {TYPE_3__ u; } ;
struct TYPE_4__ {struct vfdi_req* addr; } ;
struct siena_vf {int rxq_count; int rxq_mask; int pci_name; TYPE_1__ buf; struct efx_nic* efx; } ;
struct efx_nic {int net_dev; } ;
typedef int efx_oword_t ;


 unsigned int EFX_BUFTBL_RXQ_BASE (struct siena_vf*,unsigned int) ;
 unsigned int EFX_FIELD_MASK (int ) ;
 int EFX_MAX_DMAQ_SIZE ;
 int EFX_POPULATE_OWORD_6 (int ,int ,unsigned int,int ,int ,int ,unsigned int,int ,int ,int ,int,int ,int) ;
 int FRF_AZ_RX_DESCQ_BUF_BASE_ID ;
 int FRF_AZ_RX_DESCQ_EN ;
 int FRF_AZ_RX_DESCQ_EVQ_ID ;
 int FRF_AZ_RX_DESCQ_JUMBO ;
 int FRF_AZ_RX_DESCQ_LABEL ;
 int FRF_AZ_RX_DESCQ_SIZE ;
 int FR_BZ_RX_DESC_PTR_TBL ;
 int VFDI_RC_EINVAL ;
 int VFDI_RC_SUCCESS ;
 int VFDI_RXQ_FLAG_SCATTER_EN ;
 unsigned int VF_MAX_RX_QUEUES ;
 int __ffs (unsigned int) ;
 scalar_t__ __test_and_set_bit (unsigned int,int ) ;
 int abs_index (struct siena_vf*,unsigned int) ;
 scalar_t__ bad_buf_count (unsigned int,int ) ;
 scalar_t__ bad_vf_index (struct efx_nic*,unsigned int) ;
 int efx_siena_sriov_bufs (struct efx_nic*,unsigned int,int ,unsigned int) ;
 int efx_writeo_table (struct efx_nic*,int *,int ,int ) ;
 int hw ;
 scalar_t__ net_ratelimit () ;
 int netif_err (struct efx_nic*,int ,int ,char*,int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int efx_vfdi_init_rxq(struct siena_vf *vf)
{
 struct efx_nic *efx = vf->efx;
 struct vfdi_req *req = vf->buf.addr;
 unsigned vf_rxq = req->u.init_rxq.index;
 unsigned vf_evq = req->u.init_rxq.evq;
 unsigned buf_count = req->u.init_rxq.buf_count;
 unsigned buftbl = EFX_BUFTBL_RXQ_BASE(vf, vf_rxq);
 unsigned label;
 efx_oword_t reg;

 if (bad_vf_index(efx, vf_evq) || bad_vf_index(efx, vf_rxq) ||
     vf_rxq >= VF_MAX_RX_QUEUES ||
     bad_buf_count(buf_count, EFX_MAX_DMAQ_SIZE)) {
  if (net_ratelimit())
   netif_err(efx, hw, efx->net_dev,
      "ERROR: Invalid INIT_RXQ from %s: rxq %d evq %d "
      "buf_count %d\n", vf->pci_name, vf_rxq,
      vf_evq, buf_count);
  return VFDI_RC_EINVAL;
 }
 if (__test_and_set_bit(req->u.init_rxq.index, vf->rxq_mask))
  ++vf->rxq_count;
 efx_siena_sriov_bufs(efx, buftbl, req->u.init_rxq.addr, buf_count);

 label = req->u.init_rxq.label & EFX_FIELD_MASK(FRF_AZ_RX_DESCQ_LABEL);
 EFX_POPULATE_OWORD_6(reg,
        FRF_AZ_RX_DESCQ_BUF_BASE_ID, buftbl,
        FRF_AZ_RX_DESCQ_EVQ_ID, abs_index(vf, vf_evq),
        FRF_AZ_RX_DESCQ_LABEL, label,
        FRF_AZ_RX_DESCQ_SIZE, __ffs(buf_count),
        FRF_AZ_RX_DESCQ_JUMBO,
        !!(req->u.init_rxq.flags &
    VFDI_RXQ_FLAG_SCATTER_EN),
        FRF_AZ_RX_DESCQ_EN, 1);
 efx_writeo_table(efx, &reg, FR_BZ_RX_DESC_PTR_TBL,
    abs_index(vf, vf_rxq));

 return VFDI_RC_SUCCESS;
}
