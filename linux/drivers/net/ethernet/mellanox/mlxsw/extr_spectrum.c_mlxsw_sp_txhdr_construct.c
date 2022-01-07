
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mlxsw_tx_info {int local_port; } ;


 int MLXSW_TXHDR_ETH_CTL ;
 int MLXSW_TXHDR_LEN ;
 int MLXSW_TXHDR_PROTO_ETH ;
 int MLXSW_TXHDR_TYPE_CONTROL ;
 int MLXSW_TXHDR_VERSION_1 ;
 int memset (char*,int ,int ) ;
 int mlxsw_tx_hdr_control_tclass_set (char*,int) ;
 int mlxsw_tx_hdr_ctl_set (char*,int ) ;
 int mlxsw_tx_hdr_port_mid_set (char*,int ) ;
 int mlxsw_tx_hdr_proto_set (char*,int ) ;
 int mlxsw_tx_hdr_swid_set (char*,int ) ;
 int mlxsw_tx_hdr_type_set (char*,int ) ;
 int mlxsw_tx_hdr_version_set (char*,int ) ;
 char* skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static void mlxsw_sp_txhdr_construct(struct sk_buff *skb,
         const struct mlxsw_tx_info *tx_info)
{
 char *txhdr = skb_push(skb, MLXSW_TXHDR_LEN);

 memset(txhdr, 0, MLXSW_TXHDR_LEN);

 mlxsw_tx_hdr_version_set(txhdr, MLXSW_TXHDR_VERSION_1);
 mlxsw_tx_hdr_ctl_set(txhdr, MLXSW_TXHDR_ETH_CTL);
 mlxsw_tx_hdr_proto_set(txhdr, MLXSW_TXHDR_PROTO_ETH);
 mlxsw_tx_hdr_swid_set(txhdr, 0);
 mlxsw_tx_hdr_control_tclass_set(txhdr, 1);
 mlxsw_tx_hdr_port_mid_set(txhdr, tx_info->local_port);
 mlxsw_tx_hdr_type_set(txhdr, MLXSW_TXHDR_TYPE_CONTROL);
}
