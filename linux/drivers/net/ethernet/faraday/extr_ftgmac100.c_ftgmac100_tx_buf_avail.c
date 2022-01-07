
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ftgmac100 {int tx_clean_pointer; int tx_pointer; int tx_q_entries; } ;



__attribute__((used)) static u32 ftgmac100_tx_buf_avail(struct ftgmac100 *priv)
{






 return (priv->tx_clean_pointer - priv->tx_pointer - 1) &
  (priv->tx_q_entries - 1);
}
