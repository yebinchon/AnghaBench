
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_rss_config_cmd {int hash_mask; int* indirection_table; int secret_key; int flags; } ;
struct iwl_mvm {TYPE_1__* trans; } ;
typedef int cmd ;
struct TYPE_2__ {int num_rx_queues; } ;


 int ARRAY_SIZE (int*) ;
 int BIT (int ) ;
 int IWL_RSS_ENABLE ;
 int IWL_RSS_HASH_TYPE_IPV4_PAYLOAD ;
 int IWL_RSS_HASH_TYPE_IPV4_TCP ;
 int IWL_RSS_HASH_TYPE_IPV4_UDP ;
 int IWL_RSS_HASH_TYPE_IPV6_PAYLOAD ;
 int IWL_RSS_HASH_TYPE_IPV6_TCP ;
 int IWL_RSS_HASH_TYPE_IPV6_UDP ;
 int RSS_CONFIG_CMD ;
 int cpu_to_le32 (int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_rss_config_cmd*) ;
 int netdev_rss_key_fill (int ,int) ;

__attribute__((used)) static int iwl_send_rss_cfg_cmd(struct iwl_mvm *mvm)
{
 int i;
 struct iwl_rss_config_cmd cmd = {
  .flags = cpu_to_le32(IWL_RSS_ENABLE),
  .hash_mask = BIT(IWL_RSS_HASH_TYPE_IPV4_TCP) |
        BIT(IWL_RSS_HASH_TYPE_IPV4_UDP) |
        BIT(IWL_RSS_HASH_TYPE_IPV4_PAYLOAD) |
        BIT(IWL_RSS_HASH_TYPE_IPV6_TCP) |
        BIT(IWL_RSS_HASH_TYPE_IPV6_UDP) |
        BIT(IWL_RSS_HASH_TYPE_IPV6_PAYLOAD),
 };

 if (mvm->trans->num_rx_queues == 1)
  return 0;


 for (i = 0; i < ARRAY_SIZE(cmd.indirection_table); i++)
  cmd.indirection_table[i] =
   1 + (i % (mvm->trans->num_rx_queues - 1));
 netdev_rss_key_fill(cmd.secret_key, sizeof(cmd.secret_key));

 return iwl_mvm_send_cmd_pdu(mvm, RSS_CONFIG_CMD, 0, sizeof(cmd), &cmd);
}
