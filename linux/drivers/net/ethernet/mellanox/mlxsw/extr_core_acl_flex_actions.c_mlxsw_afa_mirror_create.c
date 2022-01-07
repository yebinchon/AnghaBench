
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int destructor; } ;
struct mlxsw_afa_mirror {int ingress; TYPE_3__ resource; int local_in_port; int span_id; } ;
struct mlxsw_afa_block {TYPE_1__* afa; } ;
struct TYPE_5__ {int (* mirror_add ) (int ,int ,struct net_device const*,int,int *) ;} ;
struct TYPE_4__ {int ops_priv; TYPE_2__* ops; } ;


 int ENOMEM ;
 struct mlxsw_afa_mirror* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct mlxsw_afa_mirror*) ;
 struct mlxsw_afa_mirror* kzalloc (int,int ) ;
 int mlxsw_afa_mirror_destructor ;
 int mlxsw_afa_resource_add (struct mlxsw_afa_block*,TYPE_3__*) ;
 int stub1 (int ,int ,struct net_device const*,int,int *) ;

__attribute__((used)) static struct mlxsw_afa_mirror *
mlxsw_afa_mirror_create(struct mlxsw_afa_block *block, u8 local_in_port,
   const struct net_device *out_dev, bool ingress)
{
 struct mlxsw_afa_mirror *mirror;
 int err;

 mirror = kzalloc(sizeof(*mirror), GFP_KERNEL);
 if (!mirror)
  return ERR_PTR(-ENOMEM);

 err = block->afa->ops->mirror_add(block->afa->ops_priv,
       local_in_port, out_dev,
       ingress, &mirror->span_id);
 if (err)
  goto err_mirror_add;

 mirror->ingress = ingress;
 mirror->local_in_port = local_in_port;
 mirror->resource.destructor = mlxsw_afa_mirror_destructor;
 mlxsw_afa_resource_add(block, &mirror->resource);
 return mirror;

err_mirror_add:
 kfree(mirror);
 return ERR_PTR(err);
}
