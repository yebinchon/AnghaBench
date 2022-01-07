
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fe_priv {int txrxctl_bits; TYPE_2__* tx_change_owner; TYPE_2__* tx_end_flip; int tx_pkts_in_progress; } ;
struct TYPE_4__ {struct TYPE_4__* next_tx_ctx; TYPE_1__* first_tx_desc; } ;
struct TYPE_3__ {int flaglen; } ;


 int NVREG_TXRXCTL_KICK ;
 int NV_TX2_VALID ;
 scalar_t__ NvRegTxRxControl ;
 int cpu_to_le32 (int ) ;
 scalar_t__ get_hwbase (struct net_device*) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void nv_tx_flip_ownership(struct net_device *dev)
{
 struct fe_priv *np = netdev_priv(dev);

 np->tx_pkts_in_progress--;
 if (np->tx_change_owner) {
  np->tx_change_owner->first_tx_desc->flaglen |=
   cpu_to_le32(NV_TX2_VALID);
  np->tx_pkts_in_progress++;

  np->tx_change_owner = np->tx_change_owner->next_tx_ctx;
  if (np->tx_change_owner == np->tx_end_flip)
   np->tx_change_owner = ((void*)0);

  writel(NVREG_TXRXCTL_KICK|np->txrxctl_bits, get_hwbase(dev) + NvRegTxRxControl);
 }
}
