
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sja1105_table {scalar_t__ entries; scalar_t__ entry_count; TYPE_3__* ops; } ;
struct TYPE_8__ {struct sja1105_table* tables; } ;
struct sja1105_private {TYPE_2__ static_config; TYPE_1__* ports; TYPE_4__* ds; } ;
struct sja1105_general_params_entry {int hostprio; int incl_srcpt1; int send_meta1; int incl_srcpt0; int send_meta0; int casc_port; int tpid2; int tpid; int ignore2stf; int vlmask; int vlmarker; int vllupformat; int mirr_port; int host_port; int mac_flt0; int mac_fltres0; int mac_flt1; int mac_fltres1; int switchid; int mirr_ptacu; } ;
struct TYPE_10__ {int index; } ;
struct TYPE_9__ {int unpacked_entry_size; } ;
struct TYPE_7__ {int mgmt_slot; } ;


 size_t BLK_IDX_GENERAL_PARAMS ;
 int ENOMEM ;
 int ETH_P_SJA1105 ;
 int GFP_KERNEL ;
 int SJA1105_LINKLOCAL_FILTER_A ;
 int SJA1105_LINKLOCAL_FILTER_A_MASK ;
 int SJA1105_LINKLOCAL_FILTER_B ;
 int SJA1105_LINKLOCAL_FILTER_B_MASK ;
 scalar_t__ SJA1105_MAX_GENERAL_PARAMS_COUNT ;
 int SJA1105_NUM_PORTS ;
 scalar_t__ dsa_is_dsa_port (TYPE_4__*,int) ;
 scalar_t__ dsa_is_user_port (TYPE_4__*,int) ;
 int dsa_upstream_port (TYPE_4__*,int ) ;
 scalar_t__ kcalloc (scalar_t__,int ,int ) ;
 int kfree (scalar_t__) ;

__attribute__((used)) static int sja1105_init_general_params(struct sja1105_private *priv)
{
 struct sja1105_general_params_entry default_general_params = {

  .mirr_ptacu = 0,
  .switchid = priv->ds->index,



  .hostprio = 7,
  .mac_fltres1 = SJA1105_LINKLOCAL_FILTER_A,
  .mac_flt1 = SJA1105_LINKLOCAL_FILTER_A_MASK,
  .incl_srcpt1 = 0,
  .send_meta1 = 0,
  .mac_fltres0 = SJA1105_LINKLOCAL_FILTER_B,
  .mac_flt0 = SJA1105_LINKLOCAL_FILTER_B_MASK,
  .incl_srcpt0 = 0,
  .send_meta0 = 0,





  .host_port = dsa_upstream_port(priv->ds, 0),

  .mirr_port = dsa_upstream_port(priv->ds, 0),







  .casc_port = SJA1105_NUM_PORTS,

  .vllupformat = 0,
  .vlmarker = 0,
  .vlmask = 0,

  .ignore2stf = 0,



  .tpid = ETH_P_SJA1105,
  .tpid2 = ETH_P_SJA1105,
 };
 struct sja1105_table *table;
 int i, k = 0;

 for (i = 0; i < SJA1105_NUM_PORTS; i++) {
  if (dsa_is_dsa_port(priv->ds, i))
   default_general_params.casc_port = i;
  else if (dsa_is_user_port(priv->ds, i))
   priv->ports[i].mgmt_slot = k++;
 }

 table = &priv->static_config.tables[BLK_IDX_GENERAL_PARAMS];

 if (table->entry_count) {
  kfree(table->entries);
  table->entry_count = 0;
 }

 table->entries = kcalloc(SJA1105_MAX_GENERAL_PARAMS_COUNT,
     table->ops->unpacked_entry_size, GFP_KERNEL);
 if (!table->entries)
  return -ENOMEM;

 table->entry_count = SJA1105_MAX_GENERAL_PARAMS_COUNT;


 ((struct sja1105_general_params_entry *)table->entries)[0] =
    default_general_params;

 return 0;
}
