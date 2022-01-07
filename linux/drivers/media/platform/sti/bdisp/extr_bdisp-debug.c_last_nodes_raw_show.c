
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct seq_file {struct bdisp_dev* private; } ;
struct bdisp_node {scalar_t__ nip; } ;
struct TYPE_2__ {struct bdisp_node** copy_node; } ;
struct bdisp_dev {TYPE_1__ dbg; } ;


 int MAX_NB_NODE ;
 int seq_printf (struct seq_file*,char*,int) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int last_nodes_raw_show(struct seq_file *s, void *data)
{
 struct bdisp_dev *bdisp = s->private;
 struct bdisp_node *node;
 u32 *val;
 int j, i = 0;

 if (!bdisp->dbg.copy_node[0]) {
  seq_puts(s, "No node built yet\n");
  return 0;
 }

 do {
  node = bdisp->dbg.copy_node[i];
  if (!node)
   break;

  seq_printf(s, "--------\nNode %d:\n", i);
  val = (u32 *)node;
  for (j = 0; j < sizeof(struct bdisp_node) / sizeof(u32); j++)
   seq_printf(s, "0x%08X\n", *val++);
 } while ((++i < MAX_NB_NODE) && node->nip);

 return 0;
}
