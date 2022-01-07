
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xcan_priv {int reg_base; } ;
typedef enum xcan_reg { ____Placeholder_xcan_reg } xcan_reg ;


 int ioread32 (int) ;

__attribute__((used)) static u32 xcan_read_reg_le(const struct xcan_priv *priv, enum xcan_reg reg)
{
 return ioread32(priv->reg_base + reg);
}
