
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct mlxsw_sp_acl_block {struct net* net; struct mlxsw_sp* mlxsw_sp; int binding_list; } ;
struct mlxsw_sp {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct mlxsw_sp_acl_block* kzalloc (int,int ) ;

struct mlxsw_sp_acl_block *mlxsw_sp_acl_block_create(struct mlxsw_sp *mlxsw_sp,
           struct net *net)
{
 struct mlxsw_sp_acl_block *block;

 block = kzalloc(sizeof(*block), GFP_KERNEL);
 if (!block)
  return ((void*)0);
 INIT_LIST_HEAD(&block->binding_list);
 block->mlxsw_sp = mlxsw_sp;
 block->net = net;
 return block;
}
