
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_addr; int addr; } ;
struct ef4_special_buffer {int entries; int index; TYPE_1__ buf; } ;
struct ef4_nic {int net_dev; } ;
typedef int ef4_qword_t ;
typedef int dma_addr_t ;


 int EF4_BUF_SIZE ;
 int EF4_BUG_ON_PARANOID (int) ;
 int EF4_POPULATE_QWORD_3 (int ,int ,int ,int ,int,int ,int ) ;
 int FRF_AZ_BUF_ADR_FBUF ;
 int FRF_AZ_BUF_ADR_REGION ;
 int FRF_AZ_BUF_OWNER_ID_FBUF ;
 int ef4_write_buf_tbl (struct ef4_nic*,int *,unsigned int) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,unsigned int,unsigned long long) ;
 int probe ;

__attribute__((used)) static void
ef4_init_special_buffer(struct ef4_nic *efx, struct ef4_special_buffer *buffer)
{
 ef4_qword_t buf_desc;
 unsigned int index;
 dma_addr_t dma_addr;
 int i;

 EF4_BUG_ON_PARANOID(!buffer->buf.addr);


 for (i = 0; i < buffer->entries; i++) {
  index = buffer->index + i;
  dma_addr = buffer->buf.dma_addr + (i * EF4_BUF_SIZE);
  netif_dbg(efx, probe, efx->net_dev,
     "mapping special buffer %d at %llx\n",
     index, (unsigned long long)dma_addr);
  EF4_POPULATE_QWORD_3(buf_desc,
         FRF_AZ_BUF_ADR_REGION, 0,
         FRF_AZ_BUF_ADR_FBUF, dma_addr >> 12,
         FRF_AZ_BUF_OWNER_ID_FBUF, 0);
  ef4_write_buf_tbl(efx, &buf_desc, index);
 }
}
