
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ir_priv {scalar_t__ reg_base; } ;


 unsigned int ioread32 (scalar_t__) ;

__attribute__((used)) static inline unsigned int img_ir_read(struct img_ir_priv *priv,
           unsigned int reg_offs)
{
 return ioread32(priv->reg_base + reg_offs);
}
