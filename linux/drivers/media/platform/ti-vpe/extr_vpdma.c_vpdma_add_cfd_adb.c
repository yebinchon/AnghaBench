
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {void* addr; int size; } ;
struct vpdma_desc_list {struct vpdma_cfd* next; TYPE_1__ buf; } ;
struct vpdma_cfd {int ctl_payload_len; scalar_t__ payload_addr; scalar_t__ w1; scalar_t__ w0; } ;
struct vpdma_buf {unsigned int size; unsigned int dma_addr; } ;


 int BUG_ON (int) ;
 int CFD_CLS_ADB ;
 int CFD_INDIRECT ;
 unsigned int VPDMA_ADB_SIZE_ALIGN ;
 unsigned int VPDMA_DESC_ALIGN ;
 int WARN_ON (unsigned int) ;
 int cfd_pkt_payload_len (int ,int ,int,unsigned int) ;
 int dump_cfd (struct vpdma_cfd*) ;

void vpdma_add_cfd_adb(struct vpdma_desc_list *list, int client,
  struct vpdma_buf *adb)
{
 struct vpdma_cfd *cfd;
 unsigned int len = adb->size;

 WARN_ON(len & VPDMA_ADB_SIZE_ALIGN);
 WARN_ON(adb->dma_addr & VPDMA_DESC_ALIGN);

 cfd = list->next;
 BUG_ON((void *)(cfd + 1) > (list->buf.addr + list->buf.size));

 cfd->w0 = 0;
 cfd->w1 = 0;
 cfd->payload_addr = (u32) adb->dma_addr;
 cfd->ctl_payload_len = cfd_pkt_payload_len(CFD_INDIRECT, CFD_CLS_ADB,
    client, len >> 4);

 list->next = cfd + 1;

 dump_cfd(cfd);
}
