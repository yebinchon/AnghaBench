
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_can_priv {int (* raminit ) (struct c_can_priv const*,int) ;} ;


 int stub1 (struct c_can_priv const*,int) ;

__attribute__((used)) static inline void c_can_reset_ram(const struct c_can_priv *priv, bool enable)
{
 if (priv->raminit)
  priv->raminit(priv, enable);
}
