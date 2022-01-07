
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r820t_priv {int dummy; } ;


 int r820t_write (struct r820t_priv*,int ,int *,int) ;

__attribute__((used)) static inline int r820t_write_reg(struct r820t_priv *priv, u8 reg, u8 val)
{
 u8 tmp = val;

 return r820t_write(priv, reg, &tmp, 1);
}
