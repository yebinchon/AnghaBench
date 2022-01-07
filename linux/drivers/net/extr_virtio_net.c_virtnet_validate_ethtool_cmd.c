
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lp_advertising; int advertising; int supported; } ;
struct TYPE_5__ {scalar_t__ link_mode_masks_nwords; scalar_t__ cmd; scalar_t__ duplex; int port; scalar_t__ speed; } ;
struct ethtool_link_ksettings {TYPE_1__ link_modes; TYPE_2__ base; } ;


 int PORT_OTHER ;
 int __ETHTOOL_LINK_MODE_MASK_NBITS ;
 int advertising ;
 scalar_t__ bitmap_empty (int ,int ) ;
 int ethtool_link_ksettings_zero_link_mode (struct ethtool_link_ksettings*,int ) ;
 int memcmp (TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static bool
virtnet_validate_ethtool_cmd(const struct ethtool_link_ksettings *cmd)
{
 struct ethtool_link_ksettings diff1 = *cmd;
 struct ethtool_link_ksettings diff2 = {};




 diff1.base.speed = 0;
 diff2.base.port = PORT_OTHER;
 ethtool_link_ksettings_zero_link_mode(&diff1, advertising);
 diff1.base.duplex = 0;
 diff1.base.cmd = 0;
 diff1.base.link_mode_masks_nwords = 0;

 return !memcmp(&diff1.base, &diff2.base, sizeof(diff1.base)) &&
  bitmap_empty(diff1.link_modes.supported,
        __ETHTOOL_LINK_MODE_MASK_NBITS) &&
  bitmap_empty(diff1.link_modes.advertising,
        __ETHTOOL_LINK_MODE_MASK_NBITS) &&
  bitmap_empty(diff1.link_modes.lp_advertising,
        __ETHTOOL_LINK_MODE_MASK_NBITS);
}
