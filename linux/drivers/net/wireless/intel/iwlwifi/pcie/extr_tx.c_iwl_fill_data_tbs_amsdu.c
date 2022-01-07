
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct iwl_txq {int dummy; } ;
struct iwl_trans {int dummy; } ;
struct iwl_device_cmd {int dummy; } ;
struct iwl_cmd_meta {int dummy; } ;


 int WARN_ON (int) ;

__attribute__((used)) static int iwl_fill_data_tbs_amsdu(struct iwl_trans *trans, struct sk_buff *skb,
       struct iwl_txq *txq, u8 hdr_len,
       struct iwl_cmd_meta *out_meta,
       struct iwl_device_cmd *dev_cmd, u16 tb1_len)
{

 WARN_ON(1);

 return -1;
}
