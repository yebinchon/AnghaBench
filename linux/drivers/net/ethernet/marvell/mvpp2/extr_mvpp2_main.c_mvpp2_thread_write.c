
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mvpp2 {scalar_t__* swth_base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mvpp2_thread_write(struct mvpp2 *priv, unsigned int thread,
          u32 offset, u32 data)
{
 writel(data, priv->swth_base[thread] + offset);
}
