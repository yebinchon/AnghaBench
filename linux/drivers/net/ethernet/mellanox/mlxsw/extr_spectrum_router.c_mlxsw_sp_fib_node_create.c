
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char prefix_len; int addr; } ;
struct mlxsw_sp_fib_node {TYPE_1__ key; int list; int entry_list; } ;
struct mlxsw_sp_fib {int node_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct mlxsw_sp_fib_node* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int ,void const*,size_t) ;

__attribute__((used)) static struct mlxsw_sp_fib_node *
mlxsw_sp_fib_node_create(struct mlxsw_sp_fib *fib, const void *addr,
    size_t addr_len, unsigned char prefix_len)
{
 struct mlxsw_sp_fib_node *fib_node;

 fib_node = kzalloc(sizeof(*fib_node), GFP_KERNEL);
 if (!fib_node)
  return ((void*)0);

 INIT_LIST_HEAD(&fib_node->entry_list);
 list_add(&fib_node->list, &fib->node_list);
 memcpy(fib_node->key.addr, addr, addr_len);
 fib_node->key.prefix_len = prefix_len;

 return fib_node;
}
