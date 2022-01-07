
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bdx_priv {int dummy; } ;


 int READ_REG (struct bdx_priv*,int) ;

__attribute__((used)) static u64 bdx_read_l2stat(struct bdx_priv *priv, int reg)
{
 u64 val;

 val = READ_REG(priv, reg);
 val |= ((u64) READ_REG(priv, reg + 8)) << 32;
 return val;
}
