
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_flower_non_repr_priv {int list; scalar_t__ ref_count; } ;


 int kfree (struct nfp_flower_non_repr_priv*) ;
 int list_del (int *) ;

void
__nfp_flower_non_repr_priv_put(struct nfp_flower_non_repr_priv *non_repr_priv)
{
 if (--non_repr_priv->ref_count)
  return;

 list_del(&non_repr_priv->list);
 kfree(non_repr_priv);
}
