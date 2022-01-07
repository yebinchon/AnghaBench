
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_priv {int tx_next; } ;


 int get_next_prio_shift (struct at91_priv const*) ;

__attribute__((used)) static inline unsigned int get_tx_next_prio(const struct at91_priv *priv)
{
 return (priv->tx_next >> get_next_prio_shift(priv)) & 0xf;
}
