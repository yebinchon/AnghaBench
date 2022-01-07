
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mvpp2 {scalar_t__* swth_base; } ;


 int writel (scalar_t__,scalar_t__) ;

void mvpp2_write(struct mvpp2 *priv, u32 offset, u32 data)
{
 writel(data, priv->swth_base[0] + offset);
}
