
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfp_crypto_req_add_front {int ipver_vlan; } ;


 int FIELD_PREP (int ,int ) ;
 int NFP_NET_TLS_IPVER ;
 int NFP_NET_TLS_VLAN ;
 int NFP_NET_TLS_VLAN_UNUSED ;
 int cpu_to_be16 (int) ;

__attribute__((used)) static void
nfp_net_tls_set_ipver_vlan(struct nfp_crypto_req_add_front *front, u8 ipver)
{
 front->ipver_vlan = cpu_to_be16(FIELD_PREP(NFP_NET_TLS_IPVER, ipver) |
     FIELD_PREP(NFP_NET_TLS_VLAN,
         NFP_NET_TLS_VLAN_UNUSED));
}
