
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct mvpp2_dbgfs_prs_entry* private; } ;
struct mvpp2_prs_entry {int dummy; } ;
struct mvpp2_dbgfs_prs_entry {int tid; int priv; } ;


 int mvpp2_prs_init_from_hw (int ,struct mvpp2_prs_entry*,int ) ;
 int mvpp2_prs_tcam_data_byte_get (struct mvpp2_prs_entry*,int,unsigned char*,unsigned char*) ;
 int seq_printf (struct seq_file*,char*,int,unsigned char*,int,unsigned char*) ;

__attribute__((used)) static int mvpp2_dbgfs_prs_hdata_show(struct seq_file *s, void *unused)
{
 struct mvpp2_dbgfs_prs_entry *entry = s->private;
 struct mvpp2_prs_entry pe;
 unsigned char data[8], mask[8];
 int i;

 mvpp2_prs_init_from_hw(entry->priv, &pe, entry->tid);

 for (i = 0; i < 8; i++)
  mvpp2_prs_tcam_data_byte_get(&pe, i, &data[i], &mask[i]);

 seq_printf(s, "%*phN %*phN\n", 8, data, 8, mask);

 return 0;
}
