
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rbdr_entry_t {scalar_t__ buf_addr; } ;
struct TYPE_4__ {int q_len; int base; } ;
struct rbdr {int enable; int head; int tail; int pgcnt; TYPE_2__ dmem; scalar_t__ is_xdp; struct pgcache* pgcache; } ;
struct pgcache {scalar_t__ page; scalar_t__ ref_count; } ;
struct nicvf {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_ATTR_SKIP_CPU_SYNC ;
 int DMA_FROM_DEVICE ;
 struct rbdr_entry_t* GET_RBDR_DESC (struct rbdr*,int) ;
 int RCV_FRAG_LEN ;
 int dma_unmap_page_attrs (int *,scalar_t__,int ,int ,int ) ;
 int nicvf_free_q_desc_mem (struct nicvf*,TYPE_2__*) ;
 scalar_t__ nicvf_iova_to_phys (struct nicvf*,scalar_t__) ;
 scalar_t__ page_ref_count (scalar_t__) ;
 int page_ref_sub (scalar_t__,scalar_t__) ;
 int phys_to_virt (scalar_t__) ;
 int put_page (scalar_t__) ;
 int smp_rmb () ;
 scalar_t__ virt_to_page (int ) ;

__attribute__((used)) static void nicvf_free_rbdr(struct nicvf *nic, struct rbdr *rbdr)
{
 int head, tail;
 u64 buf_addr, phys_addr;
 struct pgcache *pgcache;
 struct rbdr_entry_t *desc;

 if (!rbdr)
  return;

 rbdr->enable = 0;
 if (!rbdr->dmem.base)
  return;

 head = rbdr->head;
 tail = rbdr->tail;


 while (head != tail) {
  desc = GET_RBDR_DESC(rbdr, head);
  buf_addr = desc->buf_addr;
  phys_addr = nicvf_iova_to_phys(nic, buf_addr);
  dma_unmap_page_attrs(&nic->pdev->dev, buf_addr, RCV_FRAG_LEN,
         DMA_FROM_DEVICE, DMA_ATTR_SKIP_CPU_SYNC);
  if (phys_addr)
   put_page(virt_to_page(phys_to_virt(phys_addr)));
  head++;
  head &= (rbdr->dmem.q_len - 1);
 }

 desc = GET_RBDR_DESC(rbdr, tail);
 buf_addr = desc->buf_addr;
 phys_addr = nicvf_iova_to_phys(nic, buf_addr);
 dma_unmap_page_attrs(&nic->pdev->dev, buf_addr, RCV_FRAG_LEN,
        DMA_FROM_DEVICE, DMA_ATTR_SKIP_CPU_SYNC);
 if (phys_addr)
  put_page(virt_to_page(phys_to_virt(phys_addr)));


 smp_rmb();


 head = 0;
 while (head < rbdr->pgcnt) {
  pgcache = &rbdr->pgcache[head];
  if (pgcache->page && page_ref_count(pgcache->page) != 0) {
   if (rbdr->is_xdp) {
    page_ref_sub(pgcache->page,
          pgcache->ref_count - 1);
   }
   put_page(pgcache->page);
  }
  head++;
 }


 nicvf_free_q_desc_mem(nic, &rbdr->dmem);
}
