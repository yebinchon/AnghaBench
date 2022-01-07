
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcmgenet_priv {int dummy; } ;


 scalar_t__ GENET_IS_V1 (struct bcmgenet_priv*) ;
 scalar_t__ GENET_IS_V2 (struct bcmgenet_priv*) ;
 int bcmgenet_hfb_clear (struct bcmgenet_priv*) ;

__attribute__((used)) static void bcmgenet_hfb_init(struct bcmgenet_priv *priv)
{
 if (GENET_IS_V1(priv) || GENET_IS_V2(priv))
  return;

 bcmgenet_hfb_clear(priv);
}
