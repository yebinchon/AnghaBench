
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct efx_nic {TYPE_1__* type; int net_dev; } ;
struct efx_mcdi_iface {char* logging_buffer; scalar_t__ state; int seqno; scalar_t__ mode; int new_epoch; scalar_t__ logging_enabled; int iface_lock; } ;
struct TYPE_9__ {int * u32; } ;
typedef TYPE_2__ efx_dword_t ;
struct TYPE_8__ {int mcdi_max_ver; int (* mcdi_request ) (struct efx_nic*,TYPE_2__*,size_t,TYPE_2__ const*,size_t) ;} ;


 int BUG_ON (int) ;
 int EFX_POPULATE_DWORD_2 (TYPE_2__,int ,unsigned int,int ,size_t) ;
 int EFX_POPULATE_DWORD_7 (TYPE_2__,int ,int ,int ,int,int ,unsigned int,int ,size_t,int ,int,int ,int,int ,int) ;
 size_t MCDI_CTL_SDU_LEN_MAX_V2 ;
 int MCDI_HEADER_CODE ;
 int MCDI_HEADER_DATALEN ;
 int MCDI_HEADER_NOT_EPOCH ;
 int MCDI_HEADER_RESPONSE ;
 int MCDI_HEADER_RESYNC ;
 int MCDI_HEADER_SEQ ;
 int MCDI_HEADER_XFLAGS ;
 int MCDI_HEADER_XFLAGS_EVREQ ;
 scalar_t__ MCDI_MODE_EVENTS ;
 scalar_t__ MCDI_STATE_QUIESCENT ;
 unsigned int MC_CMD_V2_EXTN ;
 int MC_CMD_V2_EXTN_IN_ACTUAL_LEN ;
 int MC_CMD_V2_EXTN_IN_EXTENDED_CMD ;
 int PAGE_SIZE ;
 int SEQ_MASK ;
 int WARN_ON_ONCE (size_t) ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 int hw ;
 int le32_to_cpu (int ) ;
 int netif_info (struct efx_nic*,int ,int ,char*,char*) ;
 scalar_t__ snprintf (char*,int,char*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct efx_nic*,TYPE_2__*,size_t,TYPE_2__ const*,size_t) ;

__attribute__((used)) static void efx_mcdi_send_request(struct efx_nic *efx, unsigned cmd,
      const efx_dword_t *inbuf, size_t inlen)
{
 struct efx_mcdi_iface *mcdi = efx_mcdi(efx);



 efx_dword_t hdr[2];
 size_t hdr_len;
 u32 xflags, seqno;

 BUG_ON(mcdi->state == MCDI_STATE_QUIESCENT);


 spin_lock_bh(&mcdi->iface_lock);
 ++mcdi->seqno;
 spin_unlock_bh(&mcdi->iface_lock);

 seqno = mcdi->seqno & SEQ_MASK;
 xflags = 0;
 if (mcdi->mode == MCDI_MODE_EVENTS)
  xflags |= MCDI_HEADER_XFLAGS_EVREQ;

 if (efx->type->mcdi_max_ver == 1) {

  EFX_POPULATE_DWORD_7(hdr[0],
         MCDI_HEADER_RESPONSE, 0,
         MCDI_HEADER_RESYNC, 1,
         MCDI_HEADER_CODE, cmd,
         MCDI_HEADER_DATALEN, inlen,
         MCDI_HEADER_SEQ, seqno,
         MCDI_HEADER_XFLAGS, xflags,
         MCDI_HEADER_NOT_EPOCH, !mcdi->new_epoch);
  hdr_len = 4;
 } else {

  BUG_ON(inlen > MCDI_CTL_SDU_LEN_MAX_V2);
  EFX_POPULATE_DWORD_7(hdr[0],
         MCDI_HEADER_RESPONSE, 0,
         MCDI_HEADER_RESYNC, 1,
         MCDI_HEADER_CODE, MC_CMD_V2_EXTN,
         MCDI_HEADER_DATALEN, 0,
         MCDI_HEADER_SEQ, seqno,
         MCDI_HEADER_XFLAGS, xflags,
         MCDI_HEADER_NOT_EPOCH, !mcdi->new_epoch);
  EFX_POPULATE_DWORD_2(hdr[1],
         MC_CMD_V2_EXTN_IN_EXTENDED_CMD, cmd,
         MC_CMD_V2_EXTN_IN_ACTUAL_LEN, inlen);
  hdr_len = 8;
 }
 efx->type->mcdi_request(efx, hdr, hdr_len, inbuf, inlen);

 mcdi->new_epoch = 0;
}
