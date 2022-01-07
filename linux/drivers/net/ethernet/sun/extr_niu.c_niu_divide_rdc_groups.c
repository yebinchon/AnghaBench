
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdc_table {int* rxdma_channel; } ;
struct niu_rdc_tables {int first_table_num; int num_tables; struct rdc_table* tables; } ;
struct niu_parent {int num_ports; int* rxchan_per_port; int* rdc_default; int index; struct niu_rdc_tables* rdc_group_cfg; } ;


 int NIU_NUM_RDC_TABLES ;
 int NIU_RDC_TABLE_SLOTS ;
 int pr_cont (char*,...) ;
 int pr_info (char*,int ,int,int) ;

__attribute__((used)) static void niu_divide_rdc_groups(struct niu_parent *parent,
      int num_10g, int num_1g)
{
 int i, num_ports = parent->num_ports;
 int rdc_group, rdc_groups_per_port;
 int rdc_channel_base;

 rdc_group = 0;
 rdc_groups_per_port = NIU_NUM_RDC_TABLES / num_ports;

 rdc_channel_base = 0;

 for (i = 0; i < num_ports; i++) {
  struct niu_rdc_tables *tp = &parent->rdc_group_cfg[i];
  int grp, num_channels = parent->rxchan_per_port[i];
  int this_channel_offset;

  tp->first_table_num = rdc_group;
  tp->num_tables = rdc_groups_per_port;
  this_channel_offset = 0;
  for (grp = 0; grp < tp->num_tables; grp++) {
   struct rdc_table *rt = &tp->tables[grp];
   int slot;

   pr_info("niu%d: Port %d RDC tbl(%d) [ ",
    parent->index, i, tp->first_table_num + grp);
   for (slot = 0; slot < NIU_RDC_TABLE_SLOTS; slot++) {
    rt->rxdma_channel[slot] =
     rdc_channel_base + this_channel_offset;

    pr_cont("%d ", rt->rxdma_channel[slot]);

    if (++this_channel_offset == num_channels)
     this_channel_offset = 0;
   }
   pr_cont("]\n");
  }

  parent->rdc_default[i] = rdc_channel_base;

  rdc_channel_base += num_channels;
  rdc_group += rdc_groups_per_port;
 }
}
