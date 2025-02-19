
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_9__ {int msdu_payld; } ;
struct TYPE_8__ {scalar_t__* vaddr; void* paddr; } ;
struct TYPE_10__ {int size; int size_mask; int netbufs_ring; void* base_paddr; int fill_level; int skb_table; TYPE_4__ sw_rd_idx; scalar_t__ fill_cnt; int lock; TYPE_3__ alloc_idx; struct timer_list refill_retry_timer; } ;
struct ath10k_htt {int rx_confused; TYPE_5__ rx_ring; struct ath10k* ar; int num_mpdus_ready; int tx_fetch_ind_q; int rx_in_ord_compl_q; int rx_msdus_q; } ;
struct TYPE_7__ {int rx_ring_fill_level; } ;
struct TYPE_6__ {scalar_t__ dev_type; } ;
struct ath10k {int dev; TYPE_2__ hw_params; TYPE_1__ bus_param; } ;
typedef void* dma_addr_t ;


 int ATH10K_DBG_BOOT ;
 scalar_t__ ATH10K_DEV_TYPE_HL ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HTT_RX_RING_SIZE ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int ) ;
 int ath10k_htt_config_paddrs_ring (struct ath10k_htt*,void*) ;
 size_t ath10k_htt_get_rx_ring_size (struct ath10k_htt*) ;
 int ath10k_htt_rx_ring_refill_retry ;
 int ath10k_warn (struct ath10k*,char*) ;
 int atomic_set (int *,int ) ;
 void* dma_alloc_coherent (int ,int,void**,int ) ;
 int dma_free_coherent (int ,size_t,void*,void*) ;
 int hash_init (int ) ;
 int is_power_of_2 (int) ;
 int kcalloc (int,int,int ) ;
 int kfree (int ) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (struct timer_list*,int ,int ) ;

int ath10k_htt_rx_alloc(struct ath10k_htt *htt)
{
 struct ath10k *ar = htt->ar;
 dma_addr_t paddr;
 void *vaddr, *vaddr_ring;
 size_t size;
 struct timer_list *timer = &htt->rx_ring.refill_retry_timer;

 if (ar->bus_param.dev_type == ATH10K_DEV_TYPE_HL)
  return 0;

 htt->rx_confused = 0;




 htt->rx_ring.size = HTT_RX_RING_SIZE;
 htt->rx_ring.size_mask = htt->rx_ring.size - 1;
 htt->rx_ring.fill_level = ar->hw_params.rx_ring_fill_level;

 if (!is_power_of_2(htt->rx_ring.size)) {
  ath10k_warn(ar, "htt rx ring size is not power of 2\n");
  return -EINVAL;
 }

 htt->rx_ring.netbufs_ring =
  kcalloc(htt->rx_ring.size, sizeof(struct sk_buff *),
   GFP_KERNEL);
 if (!htt->rx_ring.netbufs_ring)
  goto err_netbuf;

 size = ath10k_htt_get_rx_ring_size(htt);

 vaddr_ring = dma_alloc_coherent(htt->ar->dev, size, &paddr, GFP_KERNEL);
 if (!vaddr_ring)
  goto err_dma_ring;

 ath10k_htt_config_paddrs_ring(htt, vaddr_ring);
 htt->rx_ring.base_paddr = paddr;

 vaddr = dma_alloc_coherent(htt->ar->dev,
       sizeof(*htt->rx_ring.alloc_idx.vaddr),
       &paddr, GFP_KERNEL);
 if (!vaddr)
  goto err_dma_idx;

 htt->rx_ring.alloc_idx.vaddr = vaddr;
 htt->rx_ring.alloc_idx.paddr = paddr;
 htt->rx_ring.sw_rd_idx.msdu_payld = htt->rx_ring.size_mask;
 *htt->rx_ring.alloc_idx.vaddr = 0;


 timer_setup(timer, ath10k_htt_rx_ring_refill_retry, 0);

 spin_lock_init(&htt->rx_ring.lock);

 htt->rx_ring.fill_cnt = 0;
 htt->rx_ring.sw_rd_idx.msdu_payld = 0;
 hash_init(htt->rx_ring.skb_table);

 skb_queue_head_init(&htt->rx_msdus_q);
 skb_queue_head_init(&htt->rx_in_ord_compl_q);
 skb_queue_head_init(&htt->tx_fetch_ind_q);
 atomic_set(&htt->num_mpdus_ready, 0);

 ath10k_dbg(ar, ATH10K_DBG_BOOT, "htt rx ring size %d fill_level %d\n",
     htt->rx_ring.size, htt->rx_ring.fill_level);
 return 0;

err_dma_idx:
 dma_free_coherent(htt->ar->dev,
     ath10k_htt_get_rx_ring_size(htt),
     vaddr_ring,
     htt->rx_ring.base_paddr);
err_dma_ring:
 kfree(htt->rx_ring.netbufs_ring);
err_netbuf:
 return -ENOMEM;
}
