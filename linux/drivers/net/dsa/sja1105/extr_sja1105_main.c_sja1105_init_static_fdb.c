
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sja1105_table {scalar_t__ entry_count; int entries; } ;
struct TYPE_2__ {struct sja1105_table* tables; } ;
struct sja1105_private {TYPE_1__ static_config; } ;


 size_t BLK_IDX_L2_LOOKUP ;
 int kfree (int ) ;

__attribute__((used)) static int sja1105_init_static_fdb(struct sja1105_private *priv)
{
 struct sja1105_table *table;

 table = &priv->static_config.tables[BLK_IDX_L2_LOOKUP];




 if (table->entry_count) {
  kfree(table->entries);
  table->entry_count = 0;
 }
 return 0;
}
