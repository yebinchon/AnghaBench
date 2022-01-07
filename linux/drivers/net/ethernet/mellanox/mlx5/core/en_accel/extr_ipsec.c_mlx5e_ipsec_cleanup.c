
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {struct mlx5e_ipsec* ipsec; } ;
struct mlx5e_ipsec {int halloc; int wq; } ;


 int destroy_workqueue (int ) ;
 int drain_workqueue (int ) ;
 int ida_destroy (int *) ;
 int kfree (struct mlx5e_ipsec*) ;

void mlx5e_ipsec_cleanup(struct mlx5e_priv *priv)
{
 struct mlx5e_ipsec *ipsec = priv->ipsec;

 if (!ipsec)
  return;

 drain_workqueue(ipsec->wq);
 destroy_workqueue(ipsec->wq);

 ida_destroy(&ipsec->halloc);
 kfree(ipsec);
 priv->ipsec = ((void*)0);
}
