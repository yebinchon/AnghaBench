
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;


 scalar_t__ ETH_P_IP ;
 scalar_t__ ETH_P_IPV6 ;

__attribute__((used)) static u8 mlx5e_etype_to_ipv(u16 ethertype)
{
 if (ethertype == ETH_P_IP)
  return 4;

 if (ethertype == ETH_P_IPV6)
  return 6;

 return 0;
}
