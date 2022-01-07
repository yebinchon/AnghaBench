
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;
typedef int copy_ecmd ;


 int memcpy (struct ethtool_link_ksettings*,struct ethtool_link_ksettings const*,int) ;
 int rocker_cmd_exec (struct rocker_port*,int,int ,struct ethtool_link_ksettings*,int *,int *) ;
 int rocker_cmd_set_port_settings_ethtool_prep ;

__attribute__((used)) static int
rocker_cmd_set_port_settings_ethtool(struct rocker_port *rocker_port,
         const struct ethtool_link_ksettings *ecmd)
{
 struct ethtool_link_ksettings copy_ecmd;

 memcpy(&copy_ecmd, ecmd, sizeof(copy_ecmd));

 return rocker_cmd_exec(rocker_port, 0,
          rocker_cmd_set_port_settings_ethtool_prep,
          &copy_ecmd, ((void*)0), ((void*)0));
}
