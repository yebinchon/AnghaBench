
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct iavf_tx_context_desc {int type_cmd_tso_mss; void* rsvd; void* l2tag2; int tunneling_params; } ;
struct iavf_ring {int next_to_use; int count; } ;


 struct iavf_tx_context_desc* IAVF_TX_CTXTDESC (struct iavf_ring*,int) ;
 scalar_t__ const IAVF_TX_DESC_DTYPE_CONTEXT ;
 void* cpu_to_le16 (int const) ;
 int cpu_to_le32 (int const) ;
 int cpu_to_le64 (scalar_t__ const) ;

__attribute__((used)) static void iavf_create_tx_ctx(struct iavf_ring *tx_ring,
          const u64 cd_type_cmd_tso_mss,
          const u32 cd_tunneling, const u32 cd_l2tag2)
{
 struct iavf_tx_context_desc *context_desc;
 int i = tx_ring->next_to_use;

 if ((cd_type_cmd_tso_mss == IAVF_TX_DESC_DTYPE_CONTEXT) &&
     !cd_tunneling && !cd_l2tag2)
  return;


 context_desc = IAVF_TX_CTXTDESC(tx_ring, i);

 i++;
 tx_ring->next_to_use = (i < tx_ring->count) ? i : 0;


 context_desc->tunneling_params = cpu_to_le32(cd_tunneling);
 context_desc->l2tag2 = cpu_to_le16(cd_l2tag2);
 context_desc->rsvd = cpu_to_le16(0);
 context_desc->type_cmd_tso_mss = cpu_to_le64(cd_type_cmd_tso_mss);
}
