
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_cee_lldp_cfg {void* enabled_system_cap; void* time_to_live; } ;


 void* ntohs (void*) ;

__attribute__((used)) static void
bfa_cee_format_lldp_cfg(struct bfa_cee_lldp_cfg *lldp_cfg)
{
 lldp_cfg->time_to_live =
   ntohs(lldp_cfg->time_to_live);
 lldp_cfg->enabled_system_cap =
   ntohs(lldp_cfg->enabled_system_cap);
}
