
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_special_buffer {unsigned int index; int entries; } ;
struct ef4_nic {int net_dev; } ;
typedef int ef4_oword_t ;


 int EF4_POPULATE_OWORD_4 (int ,int ,int ,int ,int,int ,unsigned int,int ,unsigned int) ;
 int FRF_AZ_BUF_CLR_CMD ;
 int FRF_AZ_BUF_CLR_END_ID ;
 int FRF_AZ_BUF_CLR_START_ID ;
 int FRF_AZ_BUF_UPD_CMD ;
 int FR_AZ_BUF_TBL_UPD ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;
 int hw ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,int,int) ;

__attribute__((used)) static void
ef4_fini_special_buffer(struct ef4_nic *efx, struct ef4_special_buffer *buffer)
{
 ef4_oword_t buf_tbl_upd;
 unsigned int start = buffer->index;
 unsigned int end = (buffer->index + buffer->entries - 1);

 if (!buffer->entries)
  return;

 netif_dbg(efx, hw, efx->net_dev, "unmapping special buffers %d-%d\n",
    buffer->index, buffer->index + buffer->entries - 1);

 EF4_POPULATE_OWORD_4(buf_tbl_upd,
        FRF_AZ_BUF_UPD_CMD, 0,
        FRF_AZ_BUF_CLR_CMD, 1,
        FRF_AZ_BUF_CLR_END_ID, end,
        FRF_AZ_BUF_CLR_START_ID, start);
 ef4_writeo(efx, &buf_tbl_upd, FR_AZ_BUF_TBL_UPD);
}
