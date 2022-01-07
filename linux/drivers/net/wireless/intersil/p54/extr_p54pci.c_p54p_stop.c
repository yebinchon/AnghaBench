
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct p54p_ring_control {struct p54p_desc* tx_mgmt; struct p54p_desc* tx_data; struct p54p_desc* rx_mgmt; struct p54p_desc* rx_data; } ;
struct TYPE_3__ {scalar_t__ rx_mtu; } ;
struct p54p_priv {int ** tx_buf_mgmt; TYPE_2__* pdev; int ** tx_buf_data; int ** rx_buf_mgmt; TYPE_1__ common; int ** rx_buf_data; int tasklet; struct p54p_ring_control* ring_control; } ;
struct p54p_desc {int len; scalar_t__ host_addr; } ;
struct ieee80211_hw {struct p54p_priv* priv; } ;
struct TYPE_4__ {int irq; } ;


 unsigned int ARRAY_SIZE (int **) ;
 int ISL38XX_DEV_INT_RESET ;
 int P54P_READ (int ) ;
 int P54P_WRITE (int ,int ) ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int cpu_to_le32 (int ) ;
 int dev_int ;
 int free_irq (int ,struct ieee80211_hw*) ;
 int int_enable ;
 int kfree_skb (int *) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (scalar_t__) ;
 int memset (struct p54p_ring_control*,int ,int) ;
 int p54_free_skb (struct ieee80211_hw*,int *) ;
 int pci_unmap_single (TYPE_2__*,int ,scalar_t__,int ) ;
 int tasklet_kill (int *) ;
 int udelay (int) ;

__attribute__((used)) static void p54p_stop(struct ieee80211_hw *dev)
{
 struct p54p_priv *priv = dev->priv;
 struct p54p_ring_control *ring_control = priv->ring_control;
 unsigned int i;
 struct p54p_desc *desc;

 P54P_WRITE(int_enable, cpu_to_le32(0));
 P54P_READ(int_enable);
 udelay(10);

 free_irq(priv->pdev->irq, dev);

 tasklet_kill(&priv->tasklet);

 P54P_WRITE(dev_int, cpu_to_le32(ISL38XX_DEV_INT_RESET));

 for (i = 0; i < ARRAY_SIZE(priv->rx_buf_data); i++) {
  desc = &ring_control->rx_data[i];
  if (desc->host_addr)
   pci_unmap_single(priv->pdev,
      le32_to_cpu(desc->host_addr),
      priv->common.rx_mtu + 32,
      PCI_DMA_FROMDEVICE);
  kfree_skb(priv->rx_buf_data[i]);
  priv->rx_buf_data[i] = ((void*)0);
 }

 for (i = 0; i < ARRAY_SIZE(priv->rx_buf_mgmt); i++) {
  desc = &ring_control->rx_mgmt[i];
  if (desc->host_addr)
   pci_unmap_single(priv->pdev,
      le32_to_cpu(desc->host_addr),
      priv->common.rx_mtu + 32,
      PCI_DMA_FROMDEVICE);
  kfree_skb(priv->rx_buf_mgmt[i]);
  priv->rx_buf_mgmt[i] = ((void*)0);
 }

 for (i = 0; i < ARRAY_SIZE(priv->tx_buf_data); i++) {
  desc = &ring_control->tx_data[i];
  if (desc->host_addr)
   pci_unmap_single(priv->pdev,
      le32_to_cpu(desc->host_addr),
      le16_to_cpu(desc->len),
      PCI_DMA_TODEVICE);

  p54_free_skb(dev, priv->tx_buf_data[i]);
  priv->tx_buf_data[i] = ((void*)0);
 }

 for (i = 0; i < ARRAY_SIZE(priv->tx_buf_mgmt); i++) {
  desc = &ring_control->tx_mgmt[i];
  if (desc->host_addr)
   pci_unmap_single(priv->pdev,
      le32_to_cpu(desc->host_addr),
      le16_to_cpu(desc->len),
      PCI_DMA_TODEVICE);

  p54_free_skb(dev, priv->tx_buf_mgmt[i]);
  priv->tx_buf_mgmt[i] = ((void*)0);
 }

 memset(ring_control, 0, sizeof(*ring_control));
}
