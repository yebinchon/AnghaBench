
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ethtool_link_ksettings {int dummy; } ;
struct TYPE_2__ {struct ethtool_link_ksettings lks; } ;
struct xgbe_prv_data {TYPE_1__ phy; } ;


 int XGBE_LM_COPY (struct ethtool_link_ksettings*,int ,struct ethtool_link_ksettings*,int ) ;
 int advertising ;

__attribute__((used)) static void xgbe_phy_an_advertising(struct xgbe_prv_data *pdata,
        struct ethtool_link_ksettings *dlks)
{
 struct ethtool_link_ksettings *slks = &pdata->phy.lks;

 XGBE_LM_COPY(dlks, advertising, slks, advertising);
}
