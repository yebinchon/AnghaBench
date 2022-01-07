
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ mode; int paddr; TYPE_1__* vaddr; int enabled; } ;
struct TYPE_5__ {TYPE_3__ tx_q_state; int tx_lock; } ;
struct ath10k {TYPE_2__ htt; int dev; } ;
struct TYPE_4__ {int seq; } ;


 int ATH10K_DBG_HTT ;
 int DMA_TO_DEVICE ;
 scalar_t__ HTT_TX_MODE_SWITCH_PUSH_PULL ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ) ;
 int cpu_to_le32 (int ) ;
 int dma_sync_single_for_device (int ,int ,size_t,int ) ;
 int le32_to_cpu (int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void __ath10k_htt_tx_txq_sync(struct ath10k *ar)
{
 u32 seq;
 size_t size;

 lockdep_assert_held(&ar->htt.tx_lock);

 if (!ar->htt.tx_q_state.enabled)
  return;

 if (ar->htt.tx_q_state.mode != HTT_TX_MODE_SWITCH_PUSH_PULL)
  return;

 seq = le32_to_cpu(ar->htt.tx_q_state.vaddr->seq);
 seq++;
 ar->htt.tx_q_state.vaddr->seq = cpu_to_le32(seq);

 ath10k_dbg(ar, ATH10K_DBG_HTT, "htt tx txq state update commit seq %u\n",
     seq);

 size = sizeof(*ar->htt.tx_q_state.vaddr);
 dma_sync_single_for_device(ar->dev,
       ar->htt.tx_q_state.paddr,
       size,
       DMA_TO_DEVICE);
}
