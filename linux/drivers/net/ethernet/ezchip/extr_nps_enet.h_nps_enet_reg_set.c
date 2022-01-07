
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nps_enet_priv {scalar_t__ regs_base; } ;
typedef scalar_t__ s32 ;


 int iowrite32be (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void nps_enet_reg_set(struct nps_enet_priv *priv,
        s32 reg, s32 value)
{
 iowrite32be(value, priv->regs_base + reg);
}
