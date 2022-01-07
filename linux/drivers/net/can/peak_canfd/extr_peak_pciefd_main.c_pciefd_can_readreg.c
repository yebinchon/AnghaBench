
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct pciefd_can {scalar_t__ reg_base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 pciefd_can_readreg(const struct pciefd_can *priv, u16 reg)
{
 return readl(priv->reg_base + reg);
}
