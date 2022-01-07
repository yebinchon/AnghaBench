
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {unsigned int dma_addr; int addr; } ;
struct ef4_special_buffer {unsigned int entries; unsigned int index; TYPE_1__ buf; } ;
struct ef4_nic {unsigned int next_buffer_table; int net_dev; } ;


 unsigned int ALIGN (unsigned int,unsigned int) ;
 int BUG_ON (unsigned int) ;
 unsigned int EF4_BUF_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ ef4_nic_alloc_buffer (struct ef4_nic*,TYPE_1__*,unsigned int,int ) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,unsigned int,unsigned int,int ,unsigned int,int ,int ) ;
 int probe ;
 scalar_t__ virt_to_phys (int ) ;

__attribute__((used)) static int ef4_alloc_special_buffer(struct ef4_nic *efx,
        struct ef4_special_buffer *buffer,
        unsigned int len)
{
 len = ALIGN(len, EF4_BUF_SIZE);

 if (ef4_nic_alloc_buffer(efx, &buffer->buf, len, GFP_KERNEL))
  return -ENOMEM;
 buffer->entries = len / EF4_BUF_SIZE;
 BUG_ON(buffer->buf.dma_addr & (EF4_BUF_SIZE - 1));


 buffer->index = efx->next_buffer_table;
 efx->next_buffer_table += buffer->entries;

 netif_dbg(efx, probe, efx->net_dev,
    "allocating special buffers %d-%d at %llx+%x "
    "(virt %p phys %llx)\n", buffer->index,
    buffer->index + buffer->entries - 1,
    (u64)buffer->buf.dma_addr, len,
    buffer->buf.addr, (u64)virt_to_phys(buffer->buf.addr));

 return 0;
}
