
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct altera_tse_private {scalar_t__ tx_prod; scalar_t__ tx_ring_size; scalar_t__ tx_cons; } ;



__attribute__((used)) static inline u32 tse_tx_avail(struct altera_tse_private *priv)
{
 return priv->tx_cons + priv->tx_ring_size - priv->tx_prod - 1;
}
