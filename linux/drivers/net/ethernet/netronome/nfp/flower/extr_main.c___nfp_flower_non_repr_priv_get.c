
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_flower_non_repr_priv {int ref_count; } ;



void
__nfp_flower_non_repr_priv_get(struct nfp_flower_non_repr_priv *non_repr_priv)
{
 non_repr_priv->ref_count++;
}
