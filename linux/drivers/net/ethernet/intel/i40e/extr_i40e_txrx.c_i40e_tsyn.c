
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct i40e_ring {int netdev; } ;
struct i40e_pf {int flags; int tx_hwtstamp_skipped; int ptp_tx_skb; int ptp_tx_start; int state; scalar_t__ ptp_tx; } ;
struct TYPE_2__ {int tx_flags; } ;


 int I40E_FLAG_PTP ;
 int I40E_TXD_CTX_QW1_CMD_SHIFT ;
 scalar_t__ I40E_TX_CTX_DESC_TSYN ;
 int I40E_TX_FLAGS_TSO ;
 int SKBTX_HW_TSTAMP ;
 int SKBTX_IN_PROGRESS ;
 int __I40E_PTP_TX_IN_PROGRESS ;
 struct i40e_pf* i40e_netdev_to_pf (int ) ;
 int jiffies ;
 scalar_t__ likely (int) ;
 int skb_get (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int test_and_set_bit_lock (int ,int ) ;

__attribute__((used)) static int i40e_tsyn(struct i40e_ring *tx_ring, struct sk_buff *skb,
       u32 tx_flags, u64 *cd_type_cmd_tso_mss)
{
 struct i40e_pf *pf;

 if (likely(!(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)))
  return 0;


 if (tx_flags & I40E_TX_FLAGS_TSO)
  return 0;




 pf = i40e_netdev_to_pf(tx_ring->netdev);
 if (!(pf->flags & I40E_FLAG_PTP))
  return 0;

 if (pf->ptp_tx &&
     !test_and_set_bit_lock(__I40E_PTP_TX_IN_PROGRESS, pf->state)) {
  skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
  pf->ptp_tx_start = jiffies;
  pf->ptp_tx_skb = skb_get(skb);
 } else {
  pf->tx_hwtstamp_skipped++;
  return 0;
 }

 *cd_type_cmd_tso_mss |= (u64)I40E_TX_CTX_DESC_TSYN <<
    I40E_TXD_CTX_QW1_CMD_SHIFT;

 return 1;
}
