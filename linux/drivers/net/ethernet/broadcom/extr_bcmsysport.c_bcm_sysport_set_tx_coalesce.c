
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ethtool_coalesce {int tx_max_coalesced_frames; int tx_coalesce_usecs; } ;
struct bcm_sysport_tx_ring {int index; struct bcm_sysport_priv* priv; } ;
struct bcm_sysport_priv {int dummy; } ;


 int DIV_ROUND_UP (int,int) ;
 int RING_INTR_THRESH_MASK ;
 int RING_TIMEOUT_MASK ;
 int RING_TIMEOUT_SHIFT ;
 int TDMA_DESC_RING_INTR_CONTROL (int ) ;
 int tdma_readl (struct bcm_sysport_priv*,int ) ;
 int tdma_writel (struct bcm_sysport_priv*,int,int ) ;

__attribute__((used)) static void bcm_sysport_set_tx_coalesce(struct bcm_sysport_tx_ring *ring,
     struct ethtool_coalesce *ec)
{
 struct bcm_sysport_priv *priv = ring->priv;
 u32 reg;

 reg = tdma_readl(priv, TDMA_DESC_RING_INTR_CONTROL(ring->index));
 reg &= ~(RING_INTR_THRESH_MASK |
   RING_TIMEOUT_MASK << RING_TIMEOUT_SHIFT);
 reg |= ec->tx_max_coalesced_frames;
 reg |= DIV_ROUND_UP(ec->tx_coalesce_usecs * 1000, 8192) <<
       RING_TIMEOUT_SHIFT;
 tdma_writel(priv, reg, TDMA_DESC_RING_INTR_CONTROL(ring->index));
}
