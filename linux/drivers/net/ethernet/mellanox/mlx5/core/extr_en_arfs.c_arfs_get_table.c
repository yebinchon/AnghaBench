
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlx5e_arfs_tables {struct arfs_table* arfs_tables; } ;
struct arfs_table {int dummy; } ;
typedef scalar_t__ __be16 ;


 size_t ARFS_IPV4_TCP ;
 size_t ARFS_IPV4_UDP ;
 size_t ARFS_IPV6_TCP ;
 size_t ARFS_IPV6_UDP ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static struct arfs_table *arfs_get_table(struct mlx5e_arfs_tables *arfs,
      u8 ip_proto, __be16 etype)
{
 if (etype == htons(ETH_P_IP) && ip_proto == IPPROTO_TCP)
  return &arfs->arfs_tables[ARFS_IPV4_TCP];
 if (etype == htons(ETH_P_IP) && ip_proto == IPPROTO_UDP)
  return &arfs->arfs_tables[ARFS_IPV4_UDP];
 if (etype == htons(ETH_P_IPV6) && ip_proto == IPPROTO_TCP)
  return &arfs->arfs_tables[ARFS_IPV6_TCP];
 if (etype == htons(ETH_P_IPV6) && ip_proto == IPPROTO_UDP)
  return &arfs->arfs_tables[ARFS_IPV6_UDP];

 return ((void*)0);
}
