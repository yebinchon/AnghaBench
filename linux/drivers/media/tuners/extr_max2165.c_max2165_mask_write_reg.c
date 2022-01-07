
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max2165_priv {int dummy; } ;


 int max2165_read_reg (struct max2165_priv*,int ,int *) ;
 int max2165_write_reg (struct max2165_priv*,int ,int ) ;

__attribute__((used)) static int max2165_mask_write_reg(struct max2165_priv *priv, u8 reg,
 u8 mask, u8 data)
{
 int ret;
 u8 v;

 data &= mask;
 ret = max2165_read_reg(priv, reg, &v);
 if (ret != 0)
  return ret;
 v &= ~mask;
 v |= data;
 ret = max2165_write_reg(priv, reg, v);

 return ret;
}
