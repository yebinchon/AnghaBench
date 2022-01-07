
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct xdp_buff {void* data; void* data_end; int * rxq; int data_hard_start; } ;
struct snd_queue {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rcv_queue {int xdp_rxq; } ;
struct page {int dummy; } ;
struct nicvf {TYPE_1__* pdev; int netdev; } ;
struct cqe_rx_t {scalar_t__ align_pad; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_ATTR_SKIP_CPU_SYNC ;
 int DMA_FROM_DEVICE ;
 int PAGE_MASK ;
 scalar_t__ RCV_FRAG_LEN ;


 scalar_t__ XDP_PACKET_HEADROOM ;


 int bpf_prog_run_xdp (struct bpf_prog*,struct xdp_buff*) ;
 int bpf_warn_invalid_xdp_action (int) ;
 struct sk_buff* build_skb (void*,int ) ;
 int dma_unmap_page_attrs (int *,int,scalar_t__,int ,int ) ;
 int nicvf_iova_to_phys (struct nicvf*,int) ;
 int nicvf_xdp_sq_append_pkt (struct nicvf*,struct snd_queue*,int,int,int) ;
 int page_address (struct page*) ;
 int page_ref_count (struct page*) ;
 int phys_to_virt (int) ;
 int put_page (struct page*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_put (struct sk_buff*,int) ;
 int trace_xdp_exception (int ,struct bpf_prog*,int) ;
 struct page* virt_to_page (void*) ;
 int xdp_set_data_meta_invalid (struct xdp_buff*) ;

__attribute__((used)) static inline bool nicvf_xdp_rx(struct nicvf *nic, struct bpf_prog *prog,
    struct cqe_rx_t *cqe_rx, struct snd_queue *sq,
    struct rcv_queue *rq, struct sk_buff **skb)
{
 struct xdp_buff xdp;
 struct page *page;
 u32 action;
 u16 len, offset = 0;
 u64 dma_addr, cpu_addr;
 void *orig_data;


 len = *((u16 *)((void *)cqe_rx + (3 * sizeof(u64))));
 dma_addr = *((u64 *)((void *)cqe_rx + (7 * sizeof(u64))));

 cpu_addr = nicvf_iova_to_phys(nic, dma_addr);
 if (!cpu_addr)
  return 0;
 cpu_addr = (u64)phys_to_virt(cpu_addr);
 page = virt_to_page((void *)cpu_addr);

 xdp.data_hard_start = page_address(page);
 xdp.data = (void *)cpu_addr;
 xdp_set_data_meta_invalid(&xdp);
 xdp.data_end = xdp.data + len;
 xdp.rxq = &rq->xdp_rxq;
 orig_data = xdp.data;

 rcu_read_lock();
 action = bpf_prog_run_xdp(prog, &xdp);
 rcu_read_unlock();

 len = xdp.data_end - xdp.data;

 if (orig_data != xdp.data) {
  offset = orig_data - xdp.data;
  dma_addr -= offset;
 }

 switch (action) {
 case 129:





  if (page_ref_count(page) == 1) {
   dma_addr &= PAGE_MASK;
   dma_unmap_page_attrs(&nic->pdev->dev, dma_addr,
          RCV_FRAG_LEN + XDP_PACKET_HEADROOM,
          DMA_FROM_DEVICE,
          DMA_ATTR_SKIP_CPU_SYNC);
  }


  *skb = build_skb(xdp.data,
     RCV_FRAG_LEN - cqe_rx->align_pad + offset);
  if (!*skb)
   put_page(page);
  else
   skb_put(*skb, len);
  return 0;
 case 128:
  nicvf_xdp_sq_append_pkt(nic, sq, (u64)xdp.data, dma_addr, len);
  return 1;
 default:
  bpf_warn_invalid_xdp_action(action);

 case 131:
  trace_xdp_exception(nic->netdev, prog, action);

 case 130:





  if (page_ref_count(page) == 1) {
   dma_addr &= PAGE_MASK;
   dma_unmap_page_attrs(&nic->pdev->dev, dma_addr,
          RCV_FRAG_LEN + XDP_PACKET_HEADROOM,
          DMA_FROM_DEVICE,
          DMA_ATTR_SKIP_CPU_SYNC);
  }
  put_page(page);
  return 1;
 }
 return 0;
}
