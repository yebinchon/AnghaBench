
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct in6_addr {int dummy; } ;
typedef int __be32 ;
struct TYPE_5__ {int ipv6; } ;
struct TYPE_8__ {TYPE_1__ ipv6_layout; } ;
struct TYPE_6__ {int ipv6; } ;
struct TYPE_7__ {TYPE_2__ ipv6_layout; } ;


 int ETH_P_IPV6 ;
 int MLX5E_FTE_ADDR_OF (void*,int ) ;
 int MLX5E_FTE_SET (void*,int ,int) ;
 int MLX5_FLD_SZ_BYTES (int ,int ) ;
 TYPE_4__ dst_ipv4_dst_ipv6 ;
 int ethertype ;
 int ipv6 ;
 int ipv6_addr_any (struct in6_addr*) ;
 int ipv6_layout ;
 int memcpy (int ,int *,int ) ;
 TYPE_3__ src_ipv4_src_ipv6 ;

__attribute__((used)) static void
set_ip6(void *headers_c, void *headers_v, __be32 ip6src_m[4],
 __be32 ip6src_v[4], __be32 ip6dst_m[4], __be32 ip6dst_v[4])
{
 u8 ip6_sz = MLX5_FLD_SZ_BYTES(ipv6_layout, ipv6);

 if (!ipv6_addr_any((struct in6_addr *)ip6src_m)) {
  memcpy(MLX5E_FTE_ADDR_OF(headers_v, src_ipv4_src_ipv6.ipv6_layout.ipv6),
         ip6src_v, ip6_sz);
  memcpy(MLX5E_FTE_ADDR_OF(headers_c, src_ipv4_src_ipv6.ipv6_layout.ipv6),
         ip6src_m, ip6_sz);
 }
 if (!ipv6_addr_any((struct in6_addr *)ip6dst_m)) {
  memcpy(MLX5E_FTE_ADDR_OF(headers_v, dst_ipv4_dst_ipv6.ipv6_layout.ipv6),
         ip6dst_v, ip6_sz);
  memcpy(MLX5E_FTE_ADDR_OF(headers_c, dst_ipv4_dst_ipv6.ipv6_layout.ipv6),
         ip6dst_m, ip6_sz);
 }

 MLX5E_FTE_SET(headers_c, ethertype, 0xffff);
 MLX5E_FTE_SET(headers_v, ethertype, ETH_P_IPV6);
}
