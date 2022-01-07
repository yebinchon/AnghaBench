
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_rspq {int iqe_len; int size; int desc; int cntxt_id; } ;
struct cudbg_qdesc_entry {int qtype; int desc_size; int num_desc; int data_size; int data; int qid; } ;
typedef enum cudbg_qdesc_qtype { ____Placeholder_cudbg_qdesc_qtype } cudbg_qdesc_qtype ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static inline void cudbg_fill_qdesc_rxq(const struct sge_rspq *rxq,
     enum cudbg_qdesc_qtype type,
     struct cudbg_qdesc_entry *entry)
{
 entry->qtype = type;
 entry->qid = rxq->cntxt_id;
 entry->desc_size = rxq->iqe_len;
 entry->num_desc = rxq->size;
 entry->data_size = rxq->size * rxq->iqe_len;
 memcpy(entry->data, rxq->desc, entry->data_size);
}
