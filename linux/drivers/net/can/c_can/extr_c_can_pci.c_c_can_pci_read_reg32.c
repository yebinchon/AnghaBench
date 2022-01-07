
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c_can_priv {int (* read_reg ) (struct c_can_priv const*,int) ;} ;
typedef enum reg { ____Placeholder_reg } reg ;


 int stub1 (struct c_can_priv const*,int) ;
 int stub2 (struct c_can_priv const*,int) ;

__attribute__((used)) static u32 c_can_pci_read_reg32(const struct c_can_priv *priv, enum reg index)
{
 u32 val;

 val = priv->read_reg(priv, index);
 val |= ((u32) priv->read_reg(priv, index + 1)) << 16;

 return val;
}
