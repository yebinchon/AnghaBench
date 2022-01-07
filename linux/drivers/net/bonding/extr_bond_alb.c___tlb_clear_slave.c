
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct tlb_client_info {size_t next; } ;
struct slave {int dummy; } ;
struct bonding {int dummy; } ;
struct TYPE_4__ {struct tlb_client_info* tx_hashtbl; } ;
struct TYPE_3__ {size_t head; } ;


 TYPE_2__ BOND_ALB_INFO (struct bonding*) ;
 TYPE_1__ SLAVE_TLB_INFO (struct slave*) ;
 size_t TLB_NULL_INDEX ;
 int tlb_init_slave (struct slave*) ;
 int tlb_init_table_entry (struct tlb_client_info*,int) ;

__attribute__((used)) static void __tlb_clear_slave(struct bonding *bond, struct slave *slave,
    int save_load)
{
 struct tlb_client_info *tx_hash_table;
 u32 index;


 tx_hash_table = BOND_ALB_INFO(bond).tx_hashtbl;


 if (tx_hash_table) {
  index = SLAVE_TLB_INFO(slave).head;
  while (index != TLB_NULL_INDEX) {
   u32 next_index = tx_hash_table[index].next;
   tlb_init_table_entry(&tx_hash_table[index], save_load);
   index = next_index;
  }
 }

 tlb_init_slave(slave);
}
