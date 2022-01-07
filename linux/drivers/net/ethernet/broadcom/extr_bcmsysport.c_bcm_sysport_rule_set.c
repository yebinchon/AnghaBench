
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int location; scalar_t__ ring_cookie; } ;
struct ethtool_rxnfc {TYPE_1__ fs; } ;
struct bcm_sysport_priv {int* filters_loc; int filters; } ;


 int E2BIG ;
 int ENOSPC ;
 int EOPNOTSUPP ;
 int RXCHK_BRCM_TAG (unsigned int) ;
 int RXCHK_BRCM_TAG_CID_MASK ;
 int RXCHK_BRCM_TAG_CID_SHIFT ;
 int RXCHK_BRCM_TAG_MASK (unsigned int) ;
 unsigned int RXCHK_BRCM_TAG_MAX ;
 scalar_t__ RX_CLS_FLOW_WAKE ;
 unsigned int bitmap_weight (int ,unsigned int) ;
 unsigned int find_first_zero_bit (int ,unsigned int) ;
 int rxchk_readl (struct bcm_sysport_priv*,int ) ;
 int rxchk_writel (struct bcm_sysport_priv*,int,int ) ;
 int set_bit (unsigned int,int ) ;

__attribute__((used)) static int bcm_sysport_rule_set(struct bcm_sysport_priv *priv,
    struct ethtool_rxnfc *nfc)
{
 unsigned int index;
 u32 reg;




 if (nfc->fs.location > RXCHK_BRCM_TAG_CID_MASK)
  return -E2BIG;


 if (nfc->fs.ring_cookie != RX_CLS_FLOW_WAKE)
  return -EOPNOTSUPP;


 if (bitmap_weight(priv->filters, RXCHK_BRCM_TAG_MAX) ==
     RXCHK_BRCM_TAG_MAX)
  return -ENOSPC;

 index = find_first_zero_bit(priv->filters, RXCHK_BRCM_TAG_MAX);
 if (index > RXCHK_BRCM_TAG_MAX)
  return -ENOSPC;




 reg = rxchk_readl(priv, RXCHK_BRCM_TAG(index));
 reg &= ~(RXCHK_BRCM_TAG_CID_MASK << RXCHK_BRCM_TAG_CID_SHIFT);
 reg |= nfc->fs.location << RXCHK_BRCM_TAG_CID_SHIFT;
 rxchk_writel(priv, reg, RXCHK_BRCM_TAG(index));
 rxchk_writel(priv, 0xff00ffff, RXCHK_BRCM_TAG_MASK(index));

 priv->filters_loc[index] = nfc->fs.location;
 set_bit(index, priv->filters);

 return 0;
}
