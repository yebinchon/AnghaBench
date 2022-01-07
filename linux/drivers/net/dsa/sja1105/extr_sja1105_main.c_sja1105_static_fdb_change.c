
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sja1105_table {int entry_count; struct sja1105_l2_lookup_entry* entries; } ;
struct TYPE_2__ {struct sja1105_table* tables; } ;
struct sja1105_private {TYPE_1__ static_config; } ;
struct sja1105_l2_lookup_entry {int dummy; } ;


 size_t BLK_IDX_L2_LOOKUP ;
 int sja1105_find_static_fdb_entry (struct sja1105_private*,int,struct sja1105_l2_lookup_entry const*) ;
 int sja1105_table_resize (struct sja1105_table*,int) ;

__attribute__((used)) static int
sja1105_static_fdb_change(struct sja1105_private *priv, int port,
     const struct sja1105_l2_lookup_entry *requested,
     bool keep)
{
 struct sja1105_l2_lookup_entry *l2_lookup;
 struct sja1105_table *table;
 int rc, match;

 table = &priv->static_config.tables[BLK_IDX_L2_LOOKUP];

 match = sja1105_find_static_fdb_entry(priv, port, requested);
 if (match < 0) {

  if (!keep)
   return 0;


  rc = sja1105_table_resize(table, table->entry_count + 1);
  if (rc)
   return rc;

  match = table->entry_count - 1;
 }


 l2_lookup = table->entries;







 if (keep) {
  l2_lookup[match] = *requested;
  return 0;
 }




 l2_lookup[match] = l2_lookup[table->entry_count - 1];
 return sja1105_table_resize(table, table->entry_count - 1);
}
