
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct phy_device {struct aqr107_priv* priv; } ;
struct ethtool_stats {int dummy; } ;
struct aqr107_priv {scalar_t__* sgmii_stats; } ;
struct TYPE_2__ {int name; } ;


 int AQR107_SGMII_STAT_SZ ;
 scalar_t__ U64_MAX ;
 scalar_t__ aqr107_get_stat (struct phy_device*,int) ;
 TYPE_1__* aqr107_hw_stats ;
 int phydev_err (struct phy_device*,char*,int ) ;

__attribute__((used)) static void aqr107_get_stats(struct phy_device *phydev,
        struct ethtool_stats *stats, u64 *data)
{
 struct aqr107_priv *priv = phydev->priv;
 u64 val;
 int i;

 for (i = 0; i < AQR107_SGMII_STAT_SZ; i++) {
  val = aqr107_get_stat(phydev, i);
  if (val == U64_MAX)
   phydev_err(phydev, "Reading HW Statistics failed for %s\n",
       aqr107_hw_stats[i].name);
  else
   priv->sgmii_stats[i] += val;

  data[i] = priv->sgmii_stats[i];
 }
}
