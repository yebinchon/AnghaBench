
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_filter_spec {int match_flags; void* rem_port; void** rem_host; void* loc_port; void** loc_host; int ip_proto; int ether_type; } ;
typedef void* __be32 ;
typedef void* __be16 ;


 int EFX_FILTER_MATCH_ETHER_TYPE ;
 int EFX_FILTER_MATCH_IP_PROTO ;
 int EFX_FILTER_MATCH_LOC_HOST ;
 int EFX_FILTER_MATCH_LOC_PORT ;
 int EFX_FILTER_MATCH_REM_HOST ;
 int EFX_FILTER_MATCH_REM_PORT ;
 int ETH_P_IP ;
 int htons (int ) ;

__attribute__((used)) static inline int
efx_filter_set_ipv4_full(struct efx_filter_spec *spec, u8 proto,
    __be32 lhost, __be16 lport,
    __be32 rhost, __be16 rport)
{
 spec->match_flags |=
  EFX_FILTER_MATCH_ETHER_TYPE | EFX_FILTER_MATCH_IP_PROTO |
  EFX_FILTER_MATCH_LOC_HOST | EFX_FILTER_MATCH_LOC_PORT |
  EFX_FILTER_MATCH_REM_HOST | EFX_FILTER_MATCH_REM_PORT;
 spec->ether_type = htons(ETH_P_IP);
 spec->ip_proto = proto;
 spec->loc_host[0] = lhost;
 spec->loc_port = lport;
 spec->rem_host[0] = rhost;
 spec->rem_port = rport;
 return 0;
}
