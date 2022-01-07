
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {int size; int desc; int cntxt_id; } ;
struct cudbg_qdesc_entry {int qtype; int desc_size; int num_desc; int data_size; int data; int qid; } ;
typedef enum cudbg_qdesc_qtype { ____Placeholder_cudbg_qdesc_qtype } cudbg_qdesc_qtype ;
typedef int __be64 ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static inline void cudbg_fill_qdesc_flq(const struct sge_fl *flq,
     enum cudbg_qdesc_qtype type,
     struct cudbg_qdesc_entry *entry)
{
 entry->qtype = type;
 entry->qid = flq->cntxt_id;
 entry->desc_size = sizeof(__be64);
 entry->num_desc = flq->size;
 entry->data_size = flq->size * sizeof(__be64);
 memcpy(entry->data, flq->desc, entry->data_size);
}
