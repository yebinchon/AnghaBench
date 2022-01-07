
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rep_indr_block_priv {int list; } ;


 int kfree (struct mlx5e_rep_indr_block_priv*) ;
 int list_del (int *) ;

__attribute__((used)) static void mlx5e_rep_indr_tc_block_unbind(void *cb_priv)
{
 struct mlx5e_rep_indr_block_priv *indr_priv = cb_priv;

 list_del(&indr_priv->list);
 kfree(indr_priv);
}
