
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct bcm_enet_priv {scalar_t__ base; } ;


 int bcm_writew (int ,scalar_t__) ;

__attribute__((used)) static inline void enetsw_writew(struct bcm_enet_priv *priv,
     u16 val, u32 off)
{
 bcm_writew(val, priv->base + off);
}
