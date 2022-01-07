
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_priv {int dummy; } ;


 unsigned int get_next_mb_mask (struct at91_priv const*) ;
 unsigned int get_next_prio_mask (struct at91_priv const*) ;

__attribute__((used)) static inline unsigned int get_next_mask(const struct at91_priv *priv)
{
 return get_next_mb_mask(priv) | get_next_prio_mask(priv);
}
