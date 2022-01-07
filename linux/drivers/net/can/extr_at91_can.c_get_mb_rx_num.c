
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_priv {int dummy; } ;


 unsigned int get_mb_rx_first (struct at91_priv const*) ;
 unsigned int get_mb_rx_last (struct at91_priv const*) ;

__attribute__((used)) static inline unsigned int get_mb_rx_num(const struct at91_priv *priv)
{
 return get_mb_rx_last(priv) - get_mb_rx_first(priv) + 1;
}
