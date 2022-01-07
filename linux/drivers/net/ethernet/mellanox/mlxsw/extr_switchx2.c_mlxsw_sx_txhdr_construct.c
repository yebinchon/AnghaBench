
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mlxsw_tx_info {int is_emad; int local_port; } ;


 int MLXSW_TXHDR_CPU_SIG ;
 int MLXSW_TXHDR_CTCLASS3 ;
 int MLXSW_TXHDR_EMAD ;
 int MLXSW_TXHDR_ETCLASS_5 ;
 int MLXSW_TXHDR_ETCLASS_6 ;
 int MLXSW_TXHDR_ETH_CTL ;
 int MLXSW_TXHDR_LEN ;
 int MLXSW_TXHDR_NOT_EMAD ;
 int MLXSW_TXHDR_PROTO_ETH ;
 int MLXSW_TXHDR_RDQ_EMAD ;
 int MLXSW_TXHDR_RDQ_OTHER ;
 int MLXSW_TXHDR_SIG ;
 int MLXSW_TXHDR_STCLASS_NONE ;
 int MLXSW_TXHDR_TYPE_CONTROL ;
 int MLXSW_TXHDR_VERSION_0 ;
 int memset (char*,int ,int ) ;
 int mlxsw_tx_hdr_cpu_sig_set (char*,int ) ;
 int mlxsw_tx_hdr_ctclass3_set (char*,int ) ;
 int mlxsw_tx_hdr_ctl_set (char*,int ) ;
 int mlxsw_tx_hdr_emad_set (char*,int ) ;
 int mlxsw_tx_hdr_etclass_set (char*,int ) ;
 int mlxsw_tx_hdr_port_mid_set (char*,int ) ;
 int mlxsw_tx_hdr_proto_set (char*,int ) ;
 int mlxsw_tx_hdr_rdq_set (char*,int ) ;
 int mlxsw_tx_hdr_sig_set (char*,int ) ;
 int mlxsw_tx_hdr_stclass_set (char*,int ) ;
 int mlxsw_tx_hdr_swid_set (char*,int ) ;
 int mlxsw_tx_hdr_type_set (char*,int ) ;
 int mlxsw_tx_hdr_version_set (char*,int ) ;
 char* skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static void mlxsw_sx_txhdr_construct(struct sk_buff *skb,
         const struct mlxsw_tx_info *tx_info)
{
 char *txhdr = skb_push(skb, MLXSW_TXHDR_LEN);
 bool is_emad = tx_info->is_emad;

 memset(txhdr, 0, MLXSW_TXHDR_LEN);


 mlxsw_tx_hdr_version_set(txhdr, MLXSW_TXHDR_VERSION_0);
 mlxsw_tx_hdr_ctl_set(txhdr, MLXSW_TXHDR_ETH_CTL);
 mlxsw_tx_hdr_proto_set(txhdr, MLXSW_TXHDR_PROTO_ETH);
 mlxsw_tx_hdr_etclass_set(txhdr, is_emad ? MLXSW_TXHDR_ETCLASS_6 :
        MLXSW_TXHDR_ETCLASS_5);
 mlxsw_tx_hdr_swid_set(txhdr, 0);
 mlxsw_tx_hdr_port_mid_set(txhdr, tx_info->local_port);
 mlxsw_tx_hdr_ctclass3_set(txhdr, MLXSW_TXHDR_CTCLASS3);
 mlxsw_tx_hdr_rdq_set(txhdr, is_emad ? MLXSW_TXHDR_RDQ_EMAD :
           MLXSW_TXHDR_RDQ_OTHER);
 mlxsw_tx_hdr_cpu_sig_set(txhdr, MLXSW_TXHDR_CPU_SIG);
 mlxsw_tx_hdr_sig_set(txhdr, MLXSW_TXHDR_SIG);
 mlxsw_tx_hdr_stclass_set(txhdr, MLXSW_TXHDR_STCLASS_NONE);
 mlxsw_tx_hdr_emad_set(txhdr, is_emad ? MLXSW_TXHDR_EMAD :
            MLXSW_TXHDR_NOT_EMAD);
 mlxsw_tx_hdr_type_set(txhdr, MLXSW_TXHDR_TYPE_CONTROL);
}
