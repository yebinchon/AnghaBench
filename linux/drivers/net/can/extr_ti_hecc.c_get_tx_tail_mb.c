
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_hecc_priv {int tx_tail; } ;


 int HECC_TX_MB_MASK ;

__attribute__((used)) static inline int get_tx_tail_mb(struct ti_hecc_priv *priv)
{
 return priv->tx_tail & HECC_TX_MB_MASK;
}
