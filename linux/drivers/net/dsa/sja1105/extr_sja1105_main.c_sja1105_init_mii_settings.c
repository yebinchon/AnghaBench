
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sja1105_xmii_params_entry {int * phy_mac; int * xmii_mode; } ;
struct sja1105_table {struct sja1105_xmii_params_entry* entries; scalar_t__ entry_count; TYPE_3__* ops; } ;
struct TYPE_5__ {struct sja1105_table* tables; } ;
struct sja1105_private {TYPE_2__ static_config; TYPE_1__* spidev; } ;
struct sja1105_dt_port {int phy_mode; int role; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int unpacked_entry_size; } ;
struct TYPE_4__ {struct device dev; } ;


 size_t BLK_IDX_XMII_PARAMS ;
 int ENOMEM ;
 int GFP_KERNEL ;






 scalar_t__ SJA1105_MAX_XMII_PARAMS_COUNT ;
 int SJA1105_NUM_PORTS ;
 int XMII_MODE_MII ;
 int XMII_MODE_RGMII ;
 int XMII_MODE_RMII ;
 int dev_err (struct device*,char*,int ) ;
 struct sja1105_xmii_params_entry* kcalloc (scalar_t__,int ,int ) ;
 int kfree (struct sja1105_xmii_params_entry*) ;
 int phy_modes (int) ;

__attribute__((used)) static int sja1105_init_mii_settings(struct sja1105_private *priv,
         struct sja1105_dt_port *ports)
{
 struct device *dev = &priv->spidev->dev;
 struct sja1105_xmii_params_entry *mii;
 struct sja1105_table *table;
 int i;

 table = &priv->static_config.tables[BLK_IDX_XMII_PARAMS];


 if (table->entry_count) {
  kfree(table->entries);
  table->entry_count = 0;
 }

 table->entries = kcalloc(SJA1105_MAX_XMII_PARAMS_COUNT,
     table->ops->unpacked_entry_size, GFP_KERNEL);
 if (!table->entries)
  return -ENOMEM;


 table->entry_count = SJA1105_MAX_XMII_PARAMS_COUNT;

 mii = table->entries;

 for (i = 0; i < SJA1105_NUM_PORTS; i++) {
  switch (ports[i].phy_mode) {
  case 133:
   mii->xmii_mode[i] = XMII_MODE_MII;
   break;
  case 128:
   mii->xmii_mode[i] = XMII_MODE_RMII;
   break;
  case 132:
  case 131:
  case 130:
  case 129:
   mii->xmii_mode[i] = XMII_MODE_RGMII;
   break;
  default:
   dev_err(dev, "Unsupported PHY mode %s!\n",
    phy_modes(ports[i].phy_mode));
  }

  mii->phy_mac[i] = ports[i].role;
 }
 return 0;
}
