
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_param {int max_mac_addr; int mc_start_offset; int max_mc_addr; } ;
struct s2io_nic {TYPE_1__* def_mac_addr; int dev; struct config_param config; } ;
struct TYPE_2__ {int mac_addr; } ;


 int do_s2io_add_mc (struct s2io_nic*,int ) ;
 int do_s2io_prog_unicast (int ,int ) ;

__attribute__((used)) static void do_s2io_restore_unicast_mc(struct s2io_nic *sp)
{
 int offset;
 struct config_param *config = &sp->config;

 for (offset = 0; offset < config->max_mac_addr; offset++)
  do_s2io_prog_unicast(sp->dev,
         sp->def_mac_addr[offset].mac_addr);


 for (offset = config->mc_start_offset;
      offset < config->max_mc_addr; offset++)
  do_s2io_add_mc(sp, sp->def_mac_addr[offset].mac_addr);
}
