
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mvpp2 {scalar_t__* swth_base; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 mvpp2_thread_read_relaxed(struct mvpp2 *priv, unsigned int thread,
         u32 offset)
{
 return readl_relaxed(priv->swth_base[thread] + offset);
}
