
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cc770_priv {scalar_t__ reg_base; } ;


 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void cc770_platform_write_reg(const struct cc770_priv *priv, int reg,
         u8 val)
{
 iowrite8(val, priv->reg_base + reg);
}
