
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bcmgenet_priv {TYPE_1__* hw_params; scalar_t__ base; } ;
struct TYPE_2__ {scalar_t__ tbuf_offset; } ;


 scalar_t__ GENET_IS_V1 (struct bcmgenet_priv*) ;
 scalar_t__ TBUF_BP_MC ;
 int TBUF_BP_MC_V1 ;
 int bcmgenet_rbuf_writel (struct bcmgenet_priv*,int ,int ) ;
 int bcmgenet_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void bcmgenet_bp_mc_set(struct bcmgenet_priv *priv, u32 val)
{
 if (GENET_IS_V1(priv))
  bcmgenet_rbuf_writel(priv, val, TBUF_BP_MC_V1);
 else
  bcmgenet_writel(val, priv->base +
    priv->hw_params->tbuf_offset + TBUF_BP_MC);
}
