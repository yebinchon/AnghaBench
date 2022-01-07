
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ethhdr {int h_proto; int h_dest; int h_source; } ;
struct TYPE_3__ {struct ethhdr ether_spec; } ;
struct TYPE_4__ {struct ethhdr ether_spec; } ;
struct ethtool_rx_flow_spec {TYPE_1__ h_u; TYPE_2__ m_u; } ;


 int MLX5E_FTE_ADDR_OF (void*,int ) ;
 int MLX5E_FTE_SET (void*,int ,int ) ;
 int dmac_47_16 ;
 int ether_addr_copy (int ,int ) ;
 int ethertype ;
 int mask_spec (int *,int *,int) ;
 int ntohs (int ) ;
 int smac_47_16 ;

__attribute__((used)) static void
parse_ether(void *headers_c, void *headers_v, struct ethtool_rx_flow_spec *fs)
{
 struct ethhdr *eth_mask = &fs->m_u.ether_spec;
 struct ethhdr *eth_val = &fs->h_u.ether_spec;

 mask_spec((u8 *)eth_mask, (u8 *)eth_val, sizeof(*eth_mask));
 ether_addr_copy(MLX5E_FTE_ADDR_OF(headers_c, smac_47_16), eth_mask->h_source);
 ether_addr_copy(MLX5E_FTE_ADDR_OF(headers_v, smac_47_16), eth_val->h_source);
 ether_addr_copy(MLX5E_FTE_ADDR_OF(headers_c, dmac_47_16), eth_mask->h_dest);
 ether_addr_copy(MLX5E_FTE_ADDR_OF(headers_v, dmac_47_16), eth_val->h_dest);
 MLX5E_FTE_SET(headers_c, ethertype, ntohs(eth_mask->h_proto));
 MLX5E_FTE_SET(headers_v, ethertype, ntohs(eth_val->h_proto));
}
