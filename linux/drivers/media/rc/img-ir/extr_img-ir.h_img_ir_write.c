
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ir_priv {scalar_t__ reg_base; } ;


 int iowrite32 (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void img_ir_write(struct img_ir_priv *priv,
    unsigned int reg_offs, unsigned int data)
{
 iowrite32(data, priv->reg_base + reg_offs);
}
