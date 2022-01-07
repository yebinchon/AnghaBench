
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2 {int nthreads; } ;



__attribute__((used)) static inline u32 mvpp2_cpu_to_thread(struct mvpp2 *priv, int cpu)
{
 return cpu % priv->nthreads;
}
