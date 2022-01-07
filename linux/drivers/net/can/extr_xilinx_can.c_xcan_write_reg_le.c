
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xcan_priv {int reg_base; } ;
typedef enum xcan_reg { ____Placeholder_xcan_reg } xcan_reg ;


 int iowrite32 (int ,int) ;

__attribute__((used)) static void xcan_write_reg_le(const struct xcan_priv *priv, enum xcan_reg reg,
         u32 val)
{
 iowrite32(val, priv->reg_base + reg);
}
