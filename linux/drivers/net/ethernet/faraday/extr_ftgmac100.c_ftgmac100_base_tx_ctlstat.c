
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ftgmac100 {int tx_q_entries; int txdes0_edotr_mask; } ;



__attribute__((used)) static u32 ftgmac100_base_tx_ctlstat(struct ftgmac100 *priv,
         unsigned int index)
{
 if (index == (priv->tx_q_entries - 1))
  return priv->txdes0_edotr_mask;
 else
  return 0;
}
