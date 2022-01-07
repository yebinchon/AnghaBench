
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct mvpp2_dbgfs_c2_entry* private; } ;
struct mvpp2_dbgfs_c2_entry {int id; int priv; } ;
struct mvpp2_cls_c2_entry {int* attr; } ;


 int MVPP22_CLS_C2_ATTR2_RSS_EN ;
 int mvpp2_cls_c2_read (int ,int ,struct mvpp2_cls_c2_entry*) ;
 int seq_printf (struct seq_file*,char*,int) ;

__attribute__((used)) static int mvpp2_dbgfs_flow_c2_enable_show(struct seq_file *s, void *unused)
{
 struct mvpp2_dbgfs_c2_entry *entry = s->private;
 struct mvpp2_cls_c2_entry c2;
 int enabled;

 mvpp2_cls_c2_read(entry->priv, entry->id, &c2);

 enabled = !!(c2.attr[2] & MVPP22_CLS_C2_ATTR2_RSS_EN);

 seq_printf(s, "%d\n", enabled);

 return 0;
}
