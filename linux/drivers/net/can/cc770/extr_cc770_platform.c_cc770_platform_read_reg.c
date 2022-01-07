
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cc770_priv {scalar_t__ reg_base; } ;


 int ioread8 (scalar_t__) ;

__attribute__((used)) static u8 cc770_platform_read_reg(const struct cc770_priv *priv, int reg)
{
 return ioread8(priv->reg_base + reg);
}
