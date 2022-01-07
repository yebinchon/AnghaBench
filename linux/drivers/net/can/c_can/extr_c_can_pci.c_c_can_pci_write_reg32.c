
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c_can_priv {int (* write_reg ) (struct c_can_priv const*,int,int) ;} ;
typedef enum reg { ____Placeholder_reg } reg ;


 int stub1 (struct c_can_priv const*,int,int) ;
 int stub2 (struct c_can_priv const*,int,int) ;

__attribute__((used)) static void c_can_pci_write_reg32(const struct c_can_priv *priv, enum reg index,
  u32 val)
{
 priv->write_reg(priv, index + 1, val >> 16);
 priv->write_reg(priv, index, val);
}
