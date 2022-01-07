
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int MLXSW_EMAD_EH_DMAC ;
 int MLXSW_EMAD_EH_ETHERTYPE ;
 int MLXSW_EMAD_EH_MLX_PROTO ;
 int MLXSW_EMAD_EH_PROTO_VERSION ;
 int MLXSW_EMAD_EH_SMAC ;
 int MLXSW_EMAD_ETH_HDR_LEN ;
 int mlxsw_emad_eth_hdr_dmac_memcpy_to (char*,int ) ;
 int mlxsw_emad_eth_hdr_ethertype_set (char*,int ) ;
 int mlxsw_emad_eth_hdr_mlx_proto_set (char*,int ) ;
 int mlxsw_emad_eth_hdr_smac_memcpy_to (char*,int ) ;
 int mlxsw_emad_eth_hdr_ver_set (char*,int ) ;
 char* skb_push (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static int mlxsw_emad_construct_eth_hdr(struct sk_buff *skb)
{
 char *eth_hdr = skb_push(skb, MLXSW_EMAD_ETH_HDR_LEN);

 mlxsw_emad_eth_hdr_dmac_memcpy_to(eth_hdr, MLXSW_EMAD_EH_DMAC);
 mlxsw_emad_eth_hdr_smac_memcpy_to(eth_hdr, MLXSW_EMAD_EH_SMAC);
 mlxsw_emad_eth_hdr_ethertype_set(eth_hdr, MLXSW_EMAD_EH_ETHERTYPE);
 mlxsw_emad_eth_hdr_mlx_proto_set(eth_hdr, MLXSW_EMAD_EH_MLX_PROTO);
 mlxsw_emad_eth_hdr_ver_set(eth_hdr, MLXSW_EMAD_EH_PROTO_VERSION);

 skb_reset_mac_header(skb);

 return 0;
}
