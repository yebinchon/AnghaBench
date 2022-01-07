
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {void* addr; int size; } ;
struct vpdma_desc_list {struct vpdma_cfd* next; TYPE_1__ buf; } ;
struct vpdma_cfd {int block_len; int ctl_payload_len; void* payload_addr; void* dest_addr_offset; } ;
struct vpdma_buf {int size; int dma_addr; } ;


 int CFD_CLS_BLOCK ;
 int CFD_INDIRECT ;
 int VPDMA_DESC_ALIGN ;
 int WARN_ON (int) ;
 int cfd_pkt_payload_len (int ,int ,int,int) ;
 int dump_cfd (struct vpdma_cfd*) ;

void vpdma_add_cfd_block(struct vpdma_desc_list *list, int client,
  struct vpdma_buf *blk, u32 dest_offset)
{
 struct vpdma_cfd *cfd;
 int len = blk->size;

 WARN_ON(blk->dma_addr & VPDMA_DESC_ALIGN);

 cfd = list->next;
 WARN_ON((void *)(cfd + 1) > (list->buf.addr + list->buf.size));

 cfd->dest_addr_offset = dest_offset;
 cfd->block_len = len;
 cfd->payload_addr = (u32) blk->dma_addr;
 cfd->ctl_payload_len = cfd_pkt_payload_len(CFD_INDIRECT, CFD_CLS_BLOCK,
    client, len >> 4);

 list->next = cfd + 1;

 dump_cfd(cfd);
}
