
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {unsigned int hash_base; int conns_in_use; int tids_in_use; int hash_tids_in_use; void** tid_tab; } ;


 unsigned short AF_INET6 ;
 int atomic_add (int,int *) ;
 int atomic_inc (int *) ;

__attribute__((used)) static inline void cxgb4_insert_tid(struct tid_info *t, void *data,
        unsigned int tid, unsigned short family)
{
 t->tid_tab[tid] = data;
 if (t->hash_base && (tid >= t->hash_base)) {
  if (family == AF_INET6)
   atomic_add(2, &t->hash_tids_in_use);
  else
   atomic_inc(&t->hash_tids_in_use);
 } else {
  if (family == AF_INET6)
   atomic_add(2, &t->tids_in_use);
  else
   atomic_inc(&t->tids_in_use);
 }
 atomic_inc(&t->conns_in_use);
}
