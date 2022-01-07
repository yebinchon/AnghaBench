
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_afa_mirror {int ingress; int span_id; int local_in_port; int resource; } ;
struct mlxsw_afa_block {TYPE_2__* afa; } ;
struct TYPE_4__ {int ops_priv; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* mirror_del ) (int ,int ,int ,int ) ;} ;


 int kfree (struct mlxsw_afa_mirror*) ;
 int mlxsw_afa_resource_del (int *) ;
 int stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static void
mlxsw_afa_mirror_destroy(struct mlxsw_afa_block *block,
    struct mlxsw_afa_mirror *mirror)
{
 mlxsw_afa_resource_del(&mirror->resource);
 block->afa->ops->mirror_del(block->afa->ops_priv,
        mirror->local_in_port,
        mirror->span_id,
        mirror->ingress);
 kfree(mirror);
}
