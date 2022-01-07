
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fib_node {int dummy; } ;
struct mlxsw_sp_fib_key {unsigned char prefix_len; int addr; } ;
struct mlxsw_sp_fib {int ht; } ;
typedef int key ;


 int memcpy (int ,void const*,size_t) ;
 int memset (struct mlxsw_sp_fib_key*,int ,int) ;
 int mlxsw_sp_fib_ht_params ;
 struct mlxsw_sp_fib_node* rhashtable_lookup_fast (int *,struct mlxsw_sp_fib_key*,int ) ;

__attribute__((used)) static struct mlxsw_sp_fib_node *
mlxsw_sp_fib_node_lookup(struct mlxsw_sp_fib *fib, const void *addr,
    size_t addr_len, unsigned char prefix_len)
{
 struct mlxsw_sp_fib_key key;

 memset(&key, 0, sizeof(key));
 memcpy(key.addr, addr, addr_len);
 key.prefix_len = prefix_len;
 return rhashtable_lookup_fast(&fib->ht, &key, mlxsw_sp_fib_ht_params);
}
