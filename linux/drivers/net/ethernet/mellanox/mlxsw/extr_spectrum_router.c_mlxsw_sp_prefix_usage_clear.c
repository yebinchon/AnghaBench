
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_prefix_usage {int b; } ;


 int clear_bit (unsigned char,int ) ;

__attribute__((used)) static void
mlxsw_sp_prefix_usage_clear(struct mlxsw_sp_prefix_usage *prefix_usage,
       unsigned char prefix_len)
{
 clear_bit(prefix_len, prefix_usage->b);
}
