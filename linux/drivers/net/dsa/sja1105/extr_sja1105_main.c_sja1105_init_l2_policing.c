
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sja1105_table {struct sja1105_l2_policing_entry* entries; scalar_t__ entry_count; TYPE_2__* ops; } ;
struct TYPE_3__ {struct sja1105_table* tables; } ;
struct sja1105_private {TYPE_1__ static_config; } ;
struct sja1105_l2_policing_entry {int dummy; } ;
struct TYPE_4__ {int unpacked_entry_size; } ;


 size_t BLK_IDX_L2_POLICING ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ SJA1105_MAX_L2_POLICING_COUNT ;
 int SJA1105_NUM_PORTS ;
 int SJA1105_NUM_TC ;
 struct sja1105_l2_policing_entry* kcalloc (scalar_t__,int ,int ) ;
 int kfree (struct sja1105_l2_policing_entry*) ;
 int sja1105_setup_policer (struct sja1105_l2_policing_entry*,int) ;

__attribute__((used)) static int sja1105_init_l2_policing(struct sja1105_private *priv)
{
 struct sja1105_l2_policing_entry *policing;
 struct sja1105_table *table;
 int i, j, k;

 table = &priv->static_config.tables[BLK_IDX_L2_POLICING];


 if (table->entry_count) {
  kfree(table->entries);
  table->entry_count = 0;
 }

 table->entries = kcalloc(SJA1105_MAX_L2_POLICING_COUNT,
     table->ops->unpacked_entry_size, GFP_KERNEL);
 if (!table->entries)
  return -ENOMEM;

 table->entry_count = SJA1105_MAX_L2_POLICING_COUNT;

 policing = table->entries;




 for (i = 0, k = 0; i < SJA1105_NUM_PORTS; i++) {
  int bcast = (SJA1105_NUM_PORTS * SJA1105_NUM_TC) + i;

  for (j = 0; j < SJA1105_NUM_TC; j++, k++)
   sja1105_setup_policer(policing, k);


  sja1105_setup_policer(policing, bcast);
 }
 return 0;
}
