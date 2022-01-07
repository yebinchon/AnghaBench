
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; int net_dev; } ;
struct efx_mcdi_iface {unsigned int seqno; int resp_hdr_len; unsigned int resp_data_len; int iface_lock; int resprc; scalar_t__ credits; } ;
struct TYPE_2__ {int mcdi_max_ver; } ;


 unsigned int SEQ_MASK ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 int efx_mcdi_complete_async (struct efx_mcdi_iface*,int) ;
 int efx_mcdi_complete_sync (struct efx_mcdi_iface*) ;
 int efx_mcdi_errno (unsigned int) ;
 int efx_mcdi_read_response_header (struct efx_nic*) ;
 int hw ;
 int netif_err (struct efx_nic*,int ,int ,char*,unsigned int,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void efx_mcdi_ev_cpl(struct efx_nic *efx, unsigned int seqno,
       unsigned int datalen, unsigned int mcdi_err)
{
 struct efx_mcdi_iface *mcdi = efx_mcdi(efx);
 bool wake = 0;

 spin_lock(&mcdi->iface_lock);

 if ((seqno ^ mcdi->seqno) & SEQ_MASK) {
  if (mcdi->credits)

   --mcdi->credits;
  else
   netif_err(efx, hw, efx->net_dev,
      "MC response mismatch tx seq 0x%x rx "
      "seq 0x%x\n", seqno, mcdi->seqno);
 } else {
  if (efx->type->mcdi_max_ver >= 2) {

   efx_mcdi_read_response_header(efx);
  } else {
   mcdi->resprc = efx_mcdi_errno(mcdi_err);
   mcdi->resp_hdr_len = 4;
   mcdi->resp_data_len = datalen;
  }

  wake = 1;
 }

 spin_unlock(&mcdi->iface_lock);

 if (wake) {
  if (!efx_mcdi_complete_async(mcdi, 0))
   (void) efx_mcdi_complete_sync(mcdi);







 }
}
