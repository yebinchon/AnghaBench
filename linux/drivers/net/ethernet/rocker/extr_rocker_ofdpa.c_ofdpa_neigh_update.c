
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ofdpa_neigh_tbl_entry {int ttl_check; int ref_count; int eth_dst; } ;


 int ether_addr_copy (int ,int const*) ;

__attribute__((used)) static void ofdpa_neigh_update(struct ofdpa_neigh_tbl_entry *entry,
          const u8 *eth_dst, bool ttl_check)
{
 if (eth_dst) {
  ether_addr_copy(entry->eth_dst, eth_dst);
  entry->ttl_check = ttl_check;
 } else {
  entry->ref_count++;
 }
}
