
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; scalar_t__ cmd; scalar_t__ duplex; scalar_t__ speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
typedef int diff1 ;


 int PORT_OTHER ;
 int advertising ;
 int ethtool_link_ksettings_zero_link_mode (struct ethtool_link_ksettings*,int ) ;
 int memcmp (struct ethtool_link_ksettings*,struct ethtool_link_ksettings*,int) ;

__attribute__((used)) static bool
netvsc_validate_ethtool_ss_cmd(const struct ethtool_link_ksettings *cmd)
{
 struct ethtool_link_ksettings diff1 = *cmd;
 struct ethtool_link_ksettings diff2 = {};

 diff1.base.speed = 0;
 diff1.base.duplex = 0;

 ethtool_link_ksettings_zero_link_mode(&diff1, advertising);
 diff1.base.cmd = 0;

 diff2.base.port = PORT_OTHER;

 return !memcmp(&diff1, &diff2, sizeof(diff1));
}
