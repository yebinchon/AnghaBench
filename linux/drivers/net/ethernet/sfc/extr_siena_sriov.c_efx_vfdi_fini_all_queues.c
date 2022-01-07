
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siena_vf {unsigned int index; scalar_t__ evq0_count; int buftbl_base; int rxq_retry_count; int rxq_retry_mask; int flush_waitq; scalar_t__ txq_count; scalar_t__ rxq_count; int rxq_mask; int txq_mask; struct efx_nic* efx; } ;
struct efx_nic {int dummy; } ;
typedef int efx_oword_t ;


 int BUILD_BUG_ON (int) ;
 int EFX_POPULATE_OWORD_2 (int ,int ,int,int ,unsigned int) ;
 unsigned int EFX_VF_BUFTBL_PER_VI ;
 unsigned int EFX_VI_BASE ;
 int EFX_ZERO_OWORD (int ) ;
 int FLUSH_RX_QUEUES_IN_QID_OFST ;
 int FRF_AZ_TX_FLUSH_DESCQ ;
 int FRF_AZ_TX_FLUSH_DESCQ_CMD ;
 int FR_AZ_TX_FLUSH_DESCQ ;
 int FR_BZ_EVQ_PTR_TBL ;
 int FR_BZ_RX_DESC_PTR_TBL ;
 int FR_BZ_TIMER_TBL ;
 int FR_BZ_TX_DESC_PTR_TBL ;
 unsigned int HZ ;
 int MCDI_DECLARE_BUF (int ,int ) ;
 int MCDI_SET_ARRAY_DWORD (int ,int ,unsigned int,unsigned int) ;
 int MC_CMD_FLUSH_RX_QUEUES ;
 int MC_CMD_FLUSH_RX_QUEUES_IN_LEN (unsigned int) ;
 int MC_CMD_FLUSH_RX_QUEUES_IN_LENMAX ;
 scalar_t__ MC_CMD_FLUSH_RX_QUEUES_IN_QID_OFST_MAXNUM ;
 int VFDI_RC_ETIMEDOUT ;
 scalar_t__ VF_MAX_RX_QUEUES ;
 int WARN_ON (int) ;
 int atomic_dec (int *) ;
 int atomic_set (int *,int ) ;
 int efx_mcdi_rpc (struct efx_nic*,int ,int ,int ,int *,int ,int *) ;
 int efx_siena_sriov_bufs (struct efx_nic*,int ,int *,unsigned int) ;
 unsigned int efx_vf_size (struct efx_nic*) ;
 int efx_vfdi_flush_clear (struct siena_vf*) ;
 int efx_vfdi_flush_wake (struct siena_vf*) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;
 int efx_writeo_table (struct efx_nic*,int *,int ,unsigned int) ;
 int inbuf ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int siena_finish_flush (struct efx_nic*) ;
 int siena_prepare_flush (struct efx_nic*) ;
 scalar_t__ test_and_clear_bit (unsigned int,int ) ;
 scalar_t__ test_bit (unsigned int,int ) ;
 unsigned int wait_event_timeout (int ,int ,unsigned int) ;

__attribute__((used)) static int efx_vfdi_fini_all_queues(struct siena_vf *vf)
{
 struct efx_nic *efx = vf->efx;
 efx_oword_t reg;
 unsigned count = efx_vf_size(efx);
 unsigned vf_offset = EFX_VI_BASE + vf->index * efx_vf_size(efx);
 unsigned timeout = HZ;
 unsigned index, rxqs_count;
 MCDI_DECLARE_BUF(inbuf, MC_CMD_FLUSH_RX_QUEUES_IN_LENMAX);
 int rc;

 BUILD_BUG_ON(VF_MAX_RX_QUEUES >
       MC_CMD_FLUSH_RX_QUEUES_IN_QID_OFST_MAXNUM);

 rtnl_lock();
 siena_prepare_flush(efx);
 rtnl_unlock();


 rxqs_count = 0;
 for (index = 0; index < count; ++index) {
  if (test_bit(index, vf->txq_mask)) {
   EFX_POPULATE_OWORD_2(reg,
          FRF_AZ_TX_FLUSH_DESCQ_CMD, 1,
          FRF_AZ_TX_FLUSH_DESCQ,
          vf_offset + index);
   efx_writeo(efx, &reg, FR_AZ_TX_FLUSH_DESCQ);
  }
  if (test_bit(index, vf->rxq_mask)) {
   MCDI_SET_ARRAY_DWORD(
    inbuf, FLUSH_RX_QUEUES_IN_QID_OFST,
    rxqs_count, vf_offset + index);
   rxqs_count++;
  }
 }

 atomic_set(&vf->rxq_retry_count, 0);
 while (timeout && (vf->rxq_count || vf->txq_count)) {
  rc = efx_mcdi_rpc(efx, MC_CMD_FLUSH_RX_QUEUES, inbuf,
      MC_CMD_FLUSH_RX_QUEUES_IN_LEN(rxqs_count),
      ((void*)0), 0, ((void*)0));
  WARN_ON(rc < 0);

  timeout = wait_event_timeout(vf->flush_waitq,
          efx_vfdi_flush_wake(vf),
          timeout);
  rxqs_count = 0;
  for (index = 0; index < count; ++index) {
   if (test_and_clear_bit(index, vf->rxq_retry_mask)) {
    atomic_dec(&vf->rxq_retry_count);
    MCDI_SET_ARRAY_DWORD(
     inbuf, FLUSH_RX_QUEUES_IN_QID_OFST,
     rxqs_count, vf_offset + index);
    rxqs_count++;
   }
  }
 }

 rtnl_lock();
 siena_finish_flush(efx);
 rtnl_unlock();


 EFX_ZERO_OWORD(reg);
 for (index = 0; index < count; ++index) {
  efx_writeo_table(efx, &reg, FR_BZ_RX_DESC_PTR_TBL,
     vf_offset + index);
  efx_writeo_table(efx, &reg, FR_BZ_TX_DESC_PTR_TBL,
     vf_offset + index);
  efx_writeo_table(efx, &reg, FR_BZ_EVQ_PTR_TBL,
     vf_offset + index);
  efx_writeo_table(efx, &reg, FR_BZ_TIMER_TBL,
     vf_offset + index);
 }
 efx_siena_sriov_bufs(efx, vf->buftbl_base, ((void*)0),
        EFX_VF_BUFTBL_PER_VI * efx_vf_size(efx));
 efx_vfdi_flush_clear(vf);

 vf->evq0_count = 0;

 return timeout ? 0 : VFDI_RC_ETIMEDOUT;
}
