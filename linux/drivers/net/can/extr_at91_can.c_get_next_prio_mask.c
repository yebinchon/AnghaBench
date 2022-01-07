
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_priv {int dummy; } ;


 int get_mb_tx_shift (struct at91_priv const*) ;

__attribute__((used)) static inline unsigned int get_next_prio_mask(const struct at91_priv *priv)
{
 return 0xf << get_mb_tx_shift(priv);
}
