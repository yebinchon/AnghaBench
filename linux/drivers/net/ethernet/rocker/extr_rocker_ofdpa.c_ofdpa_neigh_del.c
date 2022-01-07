
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofdpa_neigh_tbl_entry {scalar_t__ ref_count; int entry; } ;


 int hash_del (int *) ;
 int kfree (struct ofdpa_neigh_tbl_entry*) ;

__attribute__((used)) static void ofdpa_neigh_del(struct ofdpa_neigh_tbl_entry *entry)
{
 if (--entry->ref_count == 0) {
  hash_del(&entry->entry);
  kfree(entry);
 }
}
