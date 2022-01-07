
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5e_vxlan_work {int work; int port; struct mlx5e_priv* priv; } ;
struct mlx5e_priv {int wq; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct mlx5e_vxlan_work* kmalloc (int,int ) ;
 int mlx5e_vxlan_add_work ;
 int mlx5e_vxlan_del_work ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void mlx5e_vxlan_queue_work(struct mlx5e_priv *priv, u16 port, int add)
{
 struct mlx5e_vxlan_work *vxlan_work;

 vxlan_work = kmalloc(sizeof(*vxlan_work), GFP_ATOMIC);
 if (!vxlan_work)
  return;

 if (add)
  INIT_WORK(&vxlan_work->work, mlx5e_vxlan_add_work);
 else
  INIT_WORK(&vxlan_work->work, mlx5e_vxlan_del_work);

 vxlan_work->priv = priv;
 vxlan_work->port = port;
 queue_work(priv->wq, &vxlan_work->work);
}
