
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_filter_spec {int match_flags; int loc_port; int * loc_host; int ip_proto; int ether_type; } ;
typedef int __be32 ;
typedef int __be16 ;


 int EFX_FILTER_MATCH_ETHER_TYPE ;
 int EFX_FILTER_MATCH_IP_PROTO ;
 int EFX_FILTER_MATCH_LOC_HOST ;
 int EFX_FILTER_MATCH_LOC_PORT ;
 int ETH_P_IP ;
 int htons (int ) ;

__attribute__((used)) static inline int
efx_filter_set_ipv4_local(struct efx_filter_spec *spec, u8 proto,
     __be32 host, __be16 port)
{
 spec->match_flags |=
  EFX_FILTER_MATCH_ETHER_TYPE | EFX_FILTER_MATCH_IP_PROTO |
  EFX_FILTER_MATCH_LOC_HOST | EFX_FILTER_MATCH_LOC_PORT;
 spec->ether_type = htons(ETH_P_IP);
 spec->ip_proto = proto;
 spec->loc_host[0] = host;
 spec->loc_port = port;
 return 0;
}
