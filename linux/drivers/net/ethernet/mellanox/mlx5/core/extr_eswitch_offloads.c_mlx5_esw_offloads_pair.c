
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eswitch {int dev; } ;


 int esw_add_fdb_peer_miss_rules (struct mlx5_eswitch*,int ) ;

__attribute__((used)) static int mlx5_esw_offloads_pair(struct mlx5_eswitch *esw,
      struct mlx5_eswitch *peer_esw)
{
 int err;

 err = esw_add_fdb_peer_miss_rules(esw, peer_esw->dev);
 if (err)
  return err;

 return 0;
}
