
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv643xx_eth_private {scalar_t__ base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 rdlp(struct mv643xx_eth_private *mp, int offset)
{
 return readl(mp->base + offset);
}
