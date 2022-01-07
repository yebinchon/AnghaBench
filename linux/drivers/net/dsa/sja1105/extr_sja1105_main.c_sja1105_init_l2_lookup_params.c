
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sja1105_table {scalar_t__ entries; scalar_t__ entry_count; TYPE_2__* ops; } ;
struct TYPE_3__ {struct sja1105_table* tables; } ;
struct sja1105_private {TYPE_1__ static_config; } ;
struct sja1105_l2_lookup_params_entry {int poly; int shared_learn; int no_enf_hostprt; int no_mgmt_learn; int use_static; int owr_dyn; int drpnolearn; int maxaddrp; int start_dynspc; int dyn_tbsz; int maxage; } ;
struct TYPE_4__ {int unpacked_entry_size; } ;


 size_t BLK_IDX_L2_LOOKUP_PARAMS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SJA1105ET_FDB_BIN_SIZE ;
 int SJA1105_AGEING_TIME_MS (int) ;
 int SJA1105_MAX_L2_LOOKUP_COUNT ;
 scalar_t__ SJA1105_MAX_L2_LOOKUP_PARAMS_COUNT ;
 int SJA1105_NUM_PORTS ;
 scalar_t__ kcalloc (scalar_t__,int ,int ) ;
 int kfree (scalar_t__) ;

__attribute__((used)) static int sja1105_init_l2_lookup_params(struct sja1105_private *priv)
{
 struct sja1105_table *table;
 u64 max_fdb_entries = SJA1105_MAX_L2_LOOKUP_COUNT / SJA1105_NUM_PORTS;
 struct sja1105_l2_lookup_params_entry default_l2_lookup_params = {

  .maxage = SJA1105_AGEING_TIME_MS(300000),

  .dyn_tbsz = SJA1105ET_FDB_BIN_SIZE,

  .start_dynspc = 0,
  .maxaddrp = {max_fdb_entries, max_fdb_entries, max_fdb_entries,
        max_fdb_entries, max_fdb_entries, },

  .poly = 0x97,



  .shared_learn = 1,




  .no_enf_hostprt = 0,



  .no_mgmt_learn = 1,

  .use_static = 1,



  .owr_dyn = 1,
  .drpnolearn = 1,
 };

 table = &priv->static_config.tables[BLK_IDX_L2_LOOKUP_PARAMS];

 if (table->entry_count) {
  kfree(table->entries);
  table->entry_count = 0;
 }

 table->entries = kcalloc(SJA1105_MAX_L2_LOOKUP_PARAMS_COUNT,
     table->ops->unpacked_entry_size, GFP_KERNEL);
 if (!table->entries)
  return -ENOMEM;

 table->entry_count = SJA1105_MAX_L2_LOOKUP_PARAMS_COUNT;


 ((struct sja1105_l2_lookup_params_entry *)table->entries)[0] =
    default_l2_lookup_params;

 return 0;
}
