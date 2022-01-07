
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int mdev; } ;
struct mlx5e_encap_entry {scalar_t__ compl_result; int flags; int encap_header; int tun_info; int pkt_reformat; int out_dev; int flows; } ;


 int MLX5_ENCAP_ENTRY_VALID ;
 int WARN_ON (int) ;
 int kfree (int ) ;
 int kfree_rcu (struct mlx5e_encap_entry*,int ) ;
 int list_empty (int *) ;
 int mlx5_packet_reformat_dealloc (int ,int ) ;
 int mlx5e_rep_encap_entry_detach (int ,struct mlx5e_encap_entry*) ;
 int netdev_priv (int ) ;
 int rcu ;

__attribute__((used)) static void mlx5e_encap_dealloc(struct mlx5e_priv *priv, struct mlx5e_encap_entry *e)
{
 WARN_ON(!list_empty(&e->flows));

 if (e->compl_result > 0) {
  mlx5e_rep_encap_entry_detach(netdev_priv(e->out_dev), e);

  if (e->flags & MLX5_ENCAP_ENTRY_VALID)
   mlx5_packet_reformat_dealloc(priv->mdev, e->pkt_reformat);
 }

 kfree(e->tun_info);
 kfree(e->encap_header);
 kfree_rcu(e, rcu);
}
