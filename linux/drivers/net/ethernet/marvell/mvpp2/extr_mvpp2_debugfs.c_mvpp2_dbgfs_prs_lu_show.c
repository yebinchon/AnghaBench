
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct mvpp2_dbgfs_prs_entry* private; } ;
struct mvpp2_dbgfs_prs_entry {size_t tid; struct mvpp2* priv; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
struct TYPE_2__ {int lu; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int mvpp2_dbgfs_prs_lu_show(struct seq_file *s, void *unused)
{
 struct mvpp2_dbgfs_prs_entry *entry = s->private;
 struct mvpp2 *priv = entry->priv;

 seq_printf(s, "%x\n", priv->prs_shadow[entry->tid].lu);

 return 0;
}
