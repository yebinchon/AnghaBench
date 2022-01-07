
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arc_emac_priv {scalar_t__ regs; } ;


 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static inline void arc_reg_set(struct arc_emac_priv *priv, int reg, int value)
{
 iowrite32(value, priv->regs + reg * sizeof(int));
}
