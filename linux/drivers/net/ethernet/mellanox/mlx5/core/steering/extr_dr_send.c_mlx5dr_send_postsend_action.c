
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {uintptr_t addr; scalar_t__ lkey; int length; } ;
struct postsend_info {int rkey; int remote_addr; TYPE_1__ write; } ;
struct mlx5dr_domain {int mutex; } ;
struct TYPE_6__ {TYPE_2__* chunk; scalar_t__ data; } ;
struct mlx5dr_action {TYPE_3__ rewrite; } ;
struct TYPE_5__ {int rkey; int mr_addr; int byte_size; } ;


 int dr_postsend_icm_data (struct mlx5dr_domain*,struct postsend_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx5dr_send_postsend_action(struct mlx5dr_domain *dmn,
    struct mlx5dr_action *action)
{
 struct postsend_info send_info = {};
 int ret;

 send_info.write.addr = (uintptr_t)action->rewrite.data;
 send_info.write.length = action->rewrite.chunk->byte_size;
 send_info.write.lkey = 0;
 send_info.remote_addr = action->rewrite.chunk->mr_addr;
 send_info.rkey = action->rewrite.chunk->rkey;

 mutex_lock(&dmn->mutex);
 ret = dr_postsend_icm_data(dmn, &send_info);
 mutex_unlock(&dmn->mutex);

 return ret;
}
