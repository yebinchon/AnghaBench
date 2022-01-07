
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r820t_priv {int* regs; } ;


 int EINVAL ;
 int NUM_REGS ;
 scalar_t__ REG_SHADOW_START ;

__attribute__((used)) static int r820t_read_cache_reg(struct r820t_priv *priv, int reg)
{
 reg -= REG_SHADOW_START;

 if (reg >= 0 && reg < NUM_REGS)
  return priv->regs[reg];
 else
  return -EINVAL;
}
