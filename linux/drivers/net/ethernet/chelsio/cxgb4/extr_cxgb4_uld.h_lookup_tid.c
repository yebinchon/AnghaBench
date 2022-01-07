
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {unsigned int ntids; void** tid_tab; } ;



__attribute__((used)) static inline void *lookup_tid(const struct tid_info *t, unsigned int tid)
{
 return tid < t->ntids ? t->tid_tab[tid] : ((void*)0);
}
