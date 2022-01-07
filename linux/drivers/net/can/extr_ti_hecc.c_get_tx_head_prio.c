
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_hecc_priv {int tx_head; } ;


 int HECC_TX_PRIO_SHIFT ;
 int MAX_TX_PRIO ;

__attribute__((used)) static inline int get_tx_head_prio(struct ti_hecc_priv *priv)
{
 return (priv->tx_head >> HECC_TX_PRIO_SHIFT) & MAX_TX_PRIO;
}
