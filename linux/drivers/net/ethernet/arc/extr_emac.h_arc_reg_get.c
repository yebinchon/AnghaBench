
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arc_emac_priv {scalar_t__ regs; } ;


 unsigned int ioread32 (scalar_t__) ;

__attribute__((used)) static inline unsigned int arc_reg_get(struct arc_emac_priv *priv, int reg)
{
 return ioread32(priv->regs + reg * sizeof(int));
}
