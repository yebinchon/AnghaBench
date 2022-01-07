
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_priv {int dummy; } ;
typedef enum at91_mb_mode { ____Placeholder_at91_mb_mode } at91_mb_mode ;


 int set_mb_mode_prio (struct at91_priv const*,unsigned int,int,int ) ;

__attribute__((used)) static inline void set_mb_mode(const struct at91_priv *priv, unsigned int mb,
  enum at91_mb_mode mode)
{
 set_mb_mode_prio(priv, mb, mode, 0);
}
