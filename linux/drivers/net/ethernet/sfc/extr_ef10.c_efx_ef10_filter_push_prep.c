
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct efx_rss_context {scalar_t__ context_id; } ;
struct efx_nic {struct efx_ef10_nic_data* nic_data; } ;
struct efx_filter_spec {int flags; scalar_t__ dmaq_id; } ;
struct efx_ef10_nic_data {scalar_t__ vport_id; } ;
typedef int efx_dword_t ;


 scalar_t__ EFX_EF10_RSS_CONTEXT_INVALID ;
 int EFX_FILTER_FLAG_RX_RSS ;
 scalar_t__ EFX_FILTER_RX_DMAQ_ID_DROP ;
 int FILTER_OP_IN_HANDLE ;
 int FILTER_OP_IN_OP ;
 int FILTER_OP_IN_PORT_ID ;
 int FILTER_OP_IN_RX_CONTEXT ;
 int FILTER_OP_IN_RX_DEST ;
 int FILTER_OP_IN_RX_MODE ;
 int FILTER_OP_IN_RX_QUEUE ;
 int FILTER_OP_IN_TX_DEST ;
 int FILTER_OP_IN_TX_DOMAIN ;
 int MCDI_SET_DWORD (int *,int ,scalar_t__) ;
 int MCDI_SET_QWORD (int *,int ,int ) ;
 int MC_CMD_FILTER_OP_EXT_IN_LEN ;
 scalar_t__ MC_CMD_FILTER_OP_IN_OP_REPLACE ;
 scalar_t__ MC_CMD_FILTER_OP_IN_RX_DEST_DROP ;
 scalar_t__ MC_CMD_FILTER_OP_IN_RX_DEST_HOST ;
 scalar_t__ MC_CMD_FILTER_OP_IN_RX_MODE_RSS ;
 scalar_t__ MC_CMD_FILTER_OP_IN_RX_MODE_SIMPLE ;
 scalar_t__ MC_CMD_FILTER_OP_IN_TX_DEST_DEFAULT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int efx_ef10_filter_push_prep_set_match_fields (struct efx_nic*,struct efx_filter_spec const*,int *) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static void efx_ef10_filter_push_prep(struct efx_nic *efx,
          const struct efx_filter_spec *spec,
          efx_dword_t *inbuf, u64 handle,
          struct efx_rss_context *ctx,
          bool replacing)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 u32 flags = spec->flags;

 memset(inbuf, 0, MC_CMD_FILTER_OP_EXT_IN_LEN);


 if (flags & EFX_FILTER_FLAG_RX_RSS) {



  if (WARN_ON_ONCE(!ctx))
   flags &= ~EFX_FILTER_FLAG_RX_RSS;
  else if (WARN_ON_ONCE(ctx->context_id == EFX_EF10_RSS_CONTEXT_INVALID))
   flags &= ~EFX_FILTER_FLAG_RX_RSS;
 }

 if (replacing) {
  MCDI_SET_DWORD(inbuf, FILTER_OP_IN_OP,
          MC_CMD_FILTER_OP_IN_OP_REPLACE);
  MCDI_SET_QWORD(inbuf, FILTER_OP_IN_HANDLE, handle);
 } else {
  efx_ef10_filter_push_prep_set_match_fields(efx, spec, inbuf);
 }

 MCDI_SET_DWORD(inbuf, FILTER_OP_IN_PORT_ID, nic_data->vport_id);
 MCDI_SET_DWORD(inbuf, FILTER_OP_IN_RX_DEST,
         spec->dmaq_id == EFX_FILTER_RX_DMAQ_ID_DROP ?
         MC_CMD_FILTER_OP_IN_RX_DEST_DROP :
         MC_CMD_FILTER_OP_IN_RX_DEST_HOST);
 MCDI_SET_DWORD(inbuf, FILTER_OP_IN_TX_DOMAIN, 0);
 MCDI_SET_DWORD(inbuf, FILTER_OP_IN_TX_DEST,
         MC_CMD_FILTER_OP_IN_TX_DEST_DEFAULT);
 MCDI_SET_DWORD(inbuf, FILTER_OP_IN_RX_QUEUE,
         spec->dmaq_id == EFX_FILTER_RX_DMAQ_ID_DROP ?
         0 : spec->dmaq_id);
 MCDI_SET_DWORD(inbuf, FILTER_OP_IN_RX_MODE,
         (flags & EFX_FILTER_FLAG_RX_RSS) ?
         MC_CMD_FILTER_OP_IN_RX_MODE_RSS :
         MC_CMD_FILTER_OP_IN_RX_MODE_SIMPLE);
 if (flags & EFX_FILTER_FLAG_RX_RSS)
  MCDI_SET_DWORD(inbuf, FILTER_OP_IN_RX_CONTEXT, ctx->context_id);
}
