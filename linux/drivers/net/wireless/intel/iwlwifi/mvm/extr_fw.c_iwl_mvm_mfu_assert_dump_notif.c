
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_mfu_assert_dump_notif {scalar_t__ index_num; int assert_id; int data_size; int * data; } ;
typedef int __le32 ;


 int IWL_DEBUG_INFO (struct iwl_mvm*,char*,int,int) ;
 int IWL_INFO (struct iwl_mvm*,char*,int) ;
 int le16_to_cpu (scalar_t__) ;
 int le32_to_cpu (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

void iwl_mvm_mfu_assert_dump_notif(struct iwl_mvm *mvm,
       struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_mfu_assert_dump_notif *mfu_dump_notif = (void *)pkt->data;
 __le32 *dump_data = mfu_dump_notif->data;
 int n_words = le32_to_cpu(mfu_dump_notif->data_size) / sizeof(__le32);
 int i;

 if (mfu_dump_notif->index_num == 0)
  IWL_INFO(mvm, "MFUART assert id 0x%x occurred\n",
    le32_to_cpu(mfu_dump_notif->assert_id));

 for (i = 0; i < n_words; i++)
  IWL_DEBUG_INFO(mvm,
          "MFUART assert dump, dword %u: 0x%08x\n",
          le16_to_cpu(mfu_dump_notif->index_num) *
          n_words + i,
          le32_to_cpu(dump_data[i]));
}
