
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct completion {int dummy; } ;
struct ath10k_sdio_irq_enable_regs {int dummy; } ;
struct ath10k_sdio_irq_data {int mtx; struct ath10k_sdio_irq_enable_regs* irq_en_reg; } ;
struct ath10k_sdio {int func; int wr_async_work; int workqueue; struct ath10k_sdio_irq_data irq_data; } ;
struct ath10k {int dummy; } ;


 int MBOX_INT_STATUS_ENABLE_ADDRESS ;
 int SDIO_IRQ_DISABLE_TIMEOUT_HZ ;
 int ath10k_sdio_prep_async_req (struct ath10k*,int ,struct sk_buff*,struct completion*,int,int ) ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,...) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int init_completion (struct completion*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,struct ath10k_sdio_irq_enable_regs*,int) ;
 int memset (struct ath10k_sdio_irq_enable_regs*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;
 int sdio_release_irq (int ) ;
 int skb_put (struct sk_buff*,int) ;
 int wait_for_completion_timeout (struct completion*,int ) ;

__attribute__((used)) static void ath10k_sdio_irq_disable(struct ath10k *ar)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 struct ath10k_sdio_irq_data *irq_data = &ar_sdio->irq_data;
 struct ath10k_sdio_irq_enable_regs *regs = irq_data->irq_en_reg;
 struct sk_buff *skb;
 struct completion irqs_disabled_comp;
 int ret;

 skb = dev_alloc_skb(sizeof(*regs));
 if (!skb)
  return;

 mutex_lock(&irq_data->mtx);

 memset(regs, 0, sizeof(*regs));
 memcpy(skb->data, regs, sizeof(*regs));
 skb_put(skb, sizeof(*regs));

 mutex_unlock(&irq_data->mtx);

 init_completion(&irqs_disabled_comp);
 ret = ath10k_sdio_prep_async_req(ar, MBOX_INT_STATUS_ENABLE_ADDRESS,
      skb, &irqs_disabled_comp, 0, 0);
 if (ret)
  goto out;

 queue_work(ar_sdio->workqueue, &ar_sdio->wr_async_work);




 ret = wait_for_completion_timeout(&irqs_disabled_comp,
       SDIO_IRQ_DISABLE_TIMEOUT_HZ);
 if (!ret)
  ath10k_warn(ar, "sdio irq disable request timed out\n");

 sdio_claim_host(ar_sdio->func);

 ret = sdio_release_irq(ar_sdio->func);
 if (ret)
  ath10k_warn(ar, "failed to release sdio interrupt: %d\n", ret);

 sdio_release_host(ar_sdio->func);

out:
 kfree_skb(skb);
}
