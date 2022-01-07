
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mvpp2 {scalar_t__* swth_base; } ;


 scalar_t__ readl (scalar_t__) ;

u32 mvpp2_read(struct mvpp2 *priv, u32 offset)
{
 return readl(priv->swth_base[0] + offset);
}
