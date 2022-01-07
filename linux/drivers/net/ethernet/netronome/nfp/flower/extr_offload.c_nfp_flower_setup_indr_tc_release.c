
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_flower_indr_block_cb_priv {int list; } ;


 int kfree (struct nfp_flower_indr_block_cb_priv*) ;
 int list_del (int *) ;

__attribute__((used)) static void nfp_flower_setup_indr_tc_release(void *cb_priv)
{
 struct nfp_flower_indr_block_cb_priv *priv = cb_priv;

 list_del(&priv->list);
 kfree(priv);
}
