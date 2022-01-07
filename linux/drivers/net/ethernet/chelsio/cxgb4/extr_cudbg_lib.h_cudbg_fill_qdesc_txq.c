
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_desc {int dummy; } ;
struct sge_txq {int size; int desc; int cntxt_id; } ;
struct cudbg_qdesc_entry {int qtype; int desc_size; int num_desc; int data_size; int data; int qid; } ;
typedef enum cudbg_qdesc_qtype { ____Placeholder_cudbg_qdesc_qtype } cudbg_qdesc_qtype ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static inline void cudbg_fill_qdesc_txq(const struct sge_txq *txq,
     enum cudbg_qdesc_qtype type,
     struct cudbg_qdesc_entry *entry)
{
 entry->qtype = type;
 entry->qid = txq->cntxt_id;
 entry->desc_size = sizeof(struct tx_desc);
 entry->num_desc = txq->size;
 entry->data_size = txq->size * sizeof(struct tx_desc);
 memcpy(entry->data, txq->desc, entry->data_size);
}
