
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {int dummy; } ;
struct sk_buff {int ip_summed; } ;
struct qm_sg_entry {int bpid; } ;
struct qm_fd {int dummy; } ;
struct page {int dummy; } ;
struct dpaa_priv {int rx_headroom; } ;
struct dpaa_bp {unsigned int size; int percpu_count; int dev; } ;
typedef int ssize_t ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int DPAA_SGT_MAX_ENTRIES ;
 int IS_ALIGNED (unsigned long,int ) ;
 int PAGE_SIZE ;
 unsigned int SKB_DATA_ALIGN (int) ;
 int SMP_CACHE_BYTES ;
 scalar_t__ WARN_ON (int) ;
 int WARN_ONCE (int,char*) ;
 struct sk_buff* build_skb (void*,unsigned int) ;
 int dma_unmap_single (int ,int ,unsigned int,int ) ;
 struct dpaa_bp* dpaa_bpid2pool (int ) ;
 unsigned long page_address (struct page*) ;
 void* phys_to_virt (int ) ;
 int qm_fd_addr (struct qm_fd const*) ;
 int qm_fd_get_offset (struct qm_fd const*) ;
 int qm_sg_addr (struct qm_sg_entry const*) ;
 int qm_sg_entry_get_len (struct qm_sg_entry const*) ;
 int qm_sg_entry_get_off (struct qm_sg_entry const*) ;
 int qm_sg_entry_is_ext (struct qm_sg_entry const*) ;
 scalar_t__ qm_sg_entry_is_final (struct qm_sg_entry const*) ;
 int rx_csum_offload (struct dpaa_priv const*,struct qm_fd const*) ;
 int skb_add_rx_frag (struct sk_buff*,int,struct page*,int,int,unsigned int) ;
 int skb_free_frag (void*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int* this_cpu_ptr (int ) ;
 struct page* virt_to_head_page (void*) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static struct sk_buff *sg_fd_to_skb(const struct dpaa_priv *priv,
        const struct qm_fd *fd)
{
 ssize_t fd_off = qm_fd_get_offset(fd);
 dma_addr_t addr = qm_fd_addr(fd);
 const struct qm_sg_entry *sgt;
 struct page *page, *head_page;
 struct dpaa_bp *dpaa_bp;
 void *vaddr, *sg_vaddr;
 int frag_off, frag_len;
 struct sk_buff *skb;
 dma_addr_t sg_addr;
 int page_offset;
 unsigned int sz;
 int *count_ptr;
 int i;

 vaddr = phys_to_virt(addr);
 WARN_ON(!IS_ALIGNED((unsigned long)vaddr, SMP_CACHE_BYTES));


 sgt = vaddr + fd_off;
 skb = ((void*)0);
 for (i = 0; i < DPAA_SGT_MAX_ENTRIES; i++) {

  WARN_ON(qm_sg_entry_is_ext(&sgt[i]));

  sg_addr = qm_sg_addr(&sgt[i]);
  sg_vaddr = phys_to_virt(sg_addr);
  WARN_ON(!IS_ALIGNED((unsigned long)sg_vaddr,
        SMP_CACHE_BYTES));


  dpaa_bp = dpaa_bpid2pool(sgt[i].bpid);
  if (!dpaa_bp)
   goto free_buffers;

  count_ptr = this_cpu_ptr(dpaa_bp->percpu_count);
  dma_unmap_single(dpaa_bp->dev, sg_addr, dpaa_bp->size,
     DMA_FROM_DEVICE);
  if (!skb) {
   sz = dpaa_bp->size +
    SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
   skb = build_skb(sg_vaddr, sz);
   if (WARN_ON(!skb))
    goto free_buffers;

   skb->ip_summed = rx_csum_offload(priv, fd);




   WARN_ON(fd_off != priv->rx_headroom);
   skb_reserve(skb, fd_off);
   skb_put(skb, qm_sg_entry_get_len(&sgt[i]));
  } else {







   page = virt_to_page(sg_vaddr);
   head_page = virt_to_head_page(sg_vaddr);


   page_offset = ((unsigned long)sg_vaddr &
     (PAGE_SIZE - 1)) +
    (page_address(page) - page_address(head_page));



   frag_off = qm_sg_entry_get_off(&sgt[i]) + page_offset;
   frag_len = qm_sg_entry_get_len(&sgt[i]);




   skb_add_rx_frag(skb, i - 1, head_page, frag_off,
     frag_len, dpaa_bp->size);
  }

  (*count_ptr)--;

  if (qm_sg_entry_is_final(&sgt[i]))
   break;
 }
 WARN_ONCE(i == DPAA_SGT_MAX_ENTRIES, "No final bit on SGT\n");


 skb_free_frag(vaddr);

 return skb;

free_buffers:

 for (i--; i >= 0; i--) {
  dpaa_bp = dpaa_bpid2pool(sgt[i].bpid);
  if (dpaa_bp) {
   count_ptr = this_cpu_ptr(dpaa_bp->percpu_count);
   (*count_ptr)++;
  }
 }

 for (i = 0; i < DPAA_SGT_MAX_ENTRIES ; i++) {
  sg_addr = qm_sg_addr(&sgt[i]);
  sg_vaddr = phys_to_virt(sg_addr);
  skb_free_frag(sg_vaddr);
  dpaa_bp = dpaa_bpid2pool(sgt[i].bpid);
  if (dpaa_bp) {
   count_ptr = this_cpu_ptr(dpaa_bp->percpu_count);
   (*count_ptr)--;
  }

  if (qm_sg_entry_is_final(&sgt[i]))
   break;
 }

 skb_free_frag(vaddr);

 return ((void*)0);
}
