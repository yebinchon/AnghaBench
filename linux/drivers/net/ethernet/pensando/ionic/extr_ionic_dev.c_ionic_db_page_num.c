
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_lif {int hw_index; int dbid_count; } ;



int ionic_db_page_num(struct ionic_lif *lif, int pid)
{
 return (lif->hw_index * lif->dbid_count) + pid;
}
