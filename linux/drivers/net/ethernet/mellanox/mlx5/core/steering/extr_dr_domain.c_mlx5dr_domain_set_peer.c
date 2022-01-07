
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_domain {int mutex; int refcount; struct mlx5dr_domain* peer_dmn; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_dec (int *) ;
 int refcount_inc (int *) ;

void mlx5dr_domain_set_peer(struct mlx5dr_domain *dmn,
       struct mlx5dr_domain *peer_dmn)
{
 mutex_lock(&dmn->mutex);

 if (dmn->peer_dmn)
  refcount_dec(&dmn->peer_dmn->refcount);

 dmn->peer_dmn = peer_dmn;

 if (dmn->peer_dmn)
  refcount_inc(&dmn->peer_dmn->refcount);

 mutex_unlock(&dmn->mutex);
}
