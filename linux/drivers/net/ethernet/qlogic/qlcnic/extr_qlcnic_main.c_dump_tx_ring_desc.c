
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_host_tx_ring {int num_desc; int * desc_head; } ;
struct cmd_desc_type0 {int dummy; } ;


 int DUMP_PREFIX_OFFSET ;
 int KERN_INFO ;
 int pr_info (char*,int) ;
 int print_hex_dump (int ,char*,int ,int,int,int *,int,int) ;

__attribute__((used)) static inline void dump_tx_ring_desc(struct qlcnic_host_tx_ring *tx_ring)
{
 int i;

 for (i = 0; i < tx_ring->num_desc; i++) {
  pr_info("TX Desc: %d\n", i);
  print_hex_dump(KERN_INFO, "TX: ", DUMP_PREFIX_OFFSET, 16, 1,
          &tx_ring->desc_head[i],
          sizeof(struct cmd_desc_type0), 1);
 }
}
