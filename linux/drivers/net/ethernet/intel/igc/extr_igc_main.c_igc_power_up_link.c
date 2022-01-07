
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ media_type; } ;
struct TYPE_6__ {TYPE_1__ phy; } ;
struct igc_adapter {TYPE_2__ hw; } ;


 scalar_t__ igc_media_type_copper ;
 int igc_power_up_phy_copper (TYPE_2__*) ;
 int igc_reset_phy (TYPE_2__*) ;
 int igc_setup_link (TYPE_2__*) ;

__attribute__((used)) static void igc_power_up_link(struct igc_adapter *adapter)
{
 igc_reset_phy(&adapter->hw);

 if (adapter->hw.phy.media_type == igc_media_type_copper)
  igc_power_up_phy_copper(&adapter->hw);

 igc_setup_link(&adapter->hw);
}
