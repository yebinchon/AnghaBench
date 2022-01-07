
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union listen_entry {int dummy; } listen_entry ;
struct tid_info {unsigned int stid_base; union listen_entry* stid_tab; } ;



__attribute__((used)) static inline union listen_entry *stid2entry(const struct tid_info *t,
          unsigned int stid)
{
 return &t->stid_tab[stid - t->stid_base];
}
