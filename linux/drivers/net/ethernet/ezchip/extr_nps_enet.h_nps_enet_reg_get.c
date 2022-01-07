
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nps_enet_priv {scalar_t__ regs_base; } ;
typedef scalar_t__ s32 ;


 int ioread32be (scalar_t__) ;

__attribute__((used)) static inline u32 nps_enet_reg_get(struct nps_enet_priv *priv, s32 reg)
{
 return ioread32be(priv->regs_base + reg);
}
