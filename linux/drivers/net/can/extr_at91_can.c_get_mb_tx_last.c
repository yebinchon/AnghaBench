
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_priv {int dummy; } ;


 unsigned int get_mb_tx_first (struct at91_priv const*) ;
 unsigned int get_mb_tx_num (struct at91_priv const*) ;

__attribute__((used)) static inline unsigned int get_mb_tx_last(const struct at91_priv *priv)
{
 return get_mb_tx_first(priv) + get_mb_tx_num(priv) - 1;
}
