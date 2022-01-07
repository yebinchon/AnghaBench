
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofdpa_neigh_tbl_entry {int ip_addr; int entry; int ref_count; scalar_t__ index; } ;
struct ofdpa {int neigh_tbl; int neigh_tbl_next_index; } ;


 int be32_to_cpu (int ) ;
 int hash_add (int ,int *,int ) ;

__attribute__((used)) static void ofdpa_neigh_add(struct ofdpa *ofdpa,
       struct ofdpa_neigh_tbl_entry *entry)
{
 entry->index = ofdpa->neigh_tbl_next_index++;
 entry->ref_count++;
 hash_add(ofdpa->neigh_tbl, &entry->entry,
   be32_to_cpu(entry->ip_addr));
}
