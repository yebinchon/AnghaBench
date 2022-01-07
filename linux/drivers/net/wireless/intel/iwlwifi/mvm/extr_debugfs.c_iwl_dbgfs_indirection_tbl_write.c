
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rss_config_cmd {int hash_mask; int secret_key; int * indirection_table; int flags; } ;
struct iwl_mvm {int mutex; } ;
typedef int ssize_t ;
typedef int loff_t ;
typedef int cmd ;


 int ARRAY_SIZE (int *) ;
 int IWL_RSS_ENABLE ;
 int IWL_RSS_HASH_TYPE_IPV4_PAYLOAD ;
 int IWL_RSS_HASH_TYPE_IPV4_TCP ;
 int IWL_RSS_HASH_TYPE_IPV4_UDP ;
 int IWL_RSS_HASH_TYPE_IPV6_PAYLOAD ;
 int IWL_RSS_HASH_TYPE_IPV6_TCP ;
 int IWL_RSS_HASH_TYPE_IPV6_UDP ;
 int RSS_CONFIG_CMD ;
 int cpu_to_le32 (int ) ;
 int hex2bin (int *,char*,int) ;
 scalar_t__ iwl_mvm_firmware_running (struct iwl_mvm*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_rss_config_cmd*) ;
 int memcpy (int *,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_rss_key_fill (int ,int) ;

__attribute__((used)) static ssize_t iwl_dbgfs_indirection_tbl_write(struct iwl_mvm *mvm,
            char *buf, size_t count,
            loff_t *ppos)
{
 struct iwl_rss_config_cmd cmd = {
  .flags = cpu_to_le32(IWL_RSS_ENABLE),
  .hash_mask = IWL_RSS_HASH_TYPE_IPV4_TCP |
        IWL_RSS_HASH_TYPE_IPV4_UDP |
        IWL_RSS_HASH_TYPE_IPV4_PAYLOAD |
        IWL_RSS_HASH_TYPE_IPV6_TCP |
        IWL_RSS_HASH_TYPE_IPV6_UDP |
        IWL_RSS_HASH_TYPE_IPV6_PAYLOAD,
 };
 int ret, i, num_repeats, nbytes = count / 2;

 ret = hex2bin(cmd.indirection_table, buf, nbytes);
 if (ret)
  return ret;
 num_repeats = ARRAY_SIZE(cmd.indirection_table) / nbytes;
 for (i = 1; i < num_repeats; i++)
  memcpy(&cmd.indirection_table[i * nbytes],
         cmd.indirection_table, nbytes);

 memcpy(&cmd.indirection_table[i * nbytes], cmd.indirection_table,
        ARRAY_SIZE(cmd.indirection_table) % nbytes);

 netdev_rss_key_fill(cmd.secret_key, sizeof(cmd.secret_key));

 mutex_lock(&mvm->mutex);
 if (iwl_mvm_firmware_running(mvm))
  ret = iwl_mvm_send_cmd_pdu(mvm, RSS_CONFIG_CMD, 0,
        sizeof(cmd), &cmd);
 else
  ret = 0;
 mutex_unlock(&mvm->mutex);

 return ret ?: count;
}
