
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {void* echo; } ;
struct slow_path_element {TYPE_2__ hdr; } ;
struct qed_spq_entry {struct slow_path_element elem; } ;
struct core_db_data {int agg_flags; int params; void* spq_prod; } ;
struct qed_spq {int cid; int db_addr_offset; struct core_db_data db_data; } ;
struct qed_hwfn {TYPE_1__* p_spq; } ;
struct qed_chain {int dummy; } ;
struct TYPE_3__ {struct qed_chain chain; } ;


 int DOORBELL (struct qed_hwfn*,int ,int ) ;
 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ,int ,int ,int ) ;
 int EINVAL ;
 int QED_MSG_SPQ ;
 void* cpu_to_le16 (int ) ;
 int qed_chain_get_prod_idx (struct qed_chain*) ;
 struct slow_path_element* qed_chain_produce (struct qed_chain*) ;
 int wmb () ;

__attribute__((used)) static int qed_spq_hw_post(struct qed_hwfn *p_hwfn,
      struct qed_spq *p_spq, struct qed_spq_entry *p_ent)
{
 struct qed_chain *p_chain = &p_hwfn->p_spq->chain;
 struct core_db_data *p_db_data = &p_spq->db_data;
 u16 echo = qed_chain_get_prod_idx(p_chain);
 struct slow_path_element *elem;

 p_ent->elem.hdr.echo = cpu_to_le16(echo);
 elem = qed_chain_produce(p_chain);
 if (!elem) {
  DP_NOTICE(p_hwfn, "Failed to produce from SPQ chain\n");
  return -EINVAL;
 }

 *elem = p_ent->elem;


 p_db_data->spq_prod = cpu_to_le16(qed_chain_get_prod_idx(p_chain));


 wmb();

 DOORBELL(p_hwfn, p_spq->db_addr_offset, *(u32 *)p_db_data);


 wmb();

 DP_VERBOSE(p_hwfn, QED_MSG_SPQ,
     "Doorbelled [0x%08x, CID 0x%08x] with Flags: %02x agg_params: %02x, prod: %04x\n",
     p_spq->db_addr_offset,
     p_spq->cid,
     p_db_data->params,
     p_db_data->agg_flags, qed_chain_get_prod_idx(p_chain));

 return 0;
}
