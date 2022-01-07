
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct mvpp2_dbgfs_prs_entry* private; } ;
struct mvpp2_prs_entry {int sram; } ;
struct mvpp2_dbgfs_prs_entry {int tid; int priv; } ;


 int mvpp2_prs_init_from_hw (int ,struct mvpp2_prs_entry*,int ) ;
 int seq_printf (struct seq_file*,char*,int,int ) ;

__attribute__((used)) static int mvpp2_dbgfs_prs_sram_show(struct seq_file *s, void *unused)
{
 struct mvpp2_dbgfs_prs_entry *entry = s->private;
 struct mvpp2_prs_entry pe;

 mvpp2_prs_init_from_hw(entry->priv, &pe, entry->tid);

 seq_printf(s, "%*phN\n", 14, pe.sram);

 return 0;
}
