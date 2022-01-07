
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int AF_INET6 ;
 int mlxsw_sp_dpipe_table_host_matches_dump (struct sk_buff*,int ) ;

__attribute__((used)) static int
mlxsw_sp_dpipe_table_host6_matches_dump(void *priv, struct sk_buff *skb)
{
 return mlxsw_sp_dpipe_table_host_matches_dump(skb, AF_INET6);
}
