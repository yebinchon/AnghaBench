
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct bcm_enet_priv {scalar_t__ base; } ;


 int bcm_readb (scalar_t__) ;

__attribute__((used)) static inline u8 enetsw_readb(struct bcm_enet_priv *priv, u32 off)
{
 return bcm_readb(priv->base + off);
}
