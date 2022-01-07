
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot {int dummy; } ;


 int ANA_AGENCTRL ;
 int ANA_AGENCTRL_IGNORE_DMAC_FLAGS ;
 int ANA_AGENCTRL_LEARN_CPU_COPY ;
 int ANA_AGENCTRL_LEARN_FWD_KILL ;
 int ANA_AGENCTRL_LEARN_IGNORE_VLAN ;
 int ANA_TABLES_MACACCESS ;
 int MACACCESS_CMD_INIT ;
 int ocelot_rmw (struct ocelot*,int ,int,int ) ;
 int ocelot_write (struct ocelot*,int ,int ) ;

__attribute__((used)) static void ocelot_mact_init(struct ocelot *ocelot)
{




 ocelot_rmw(ocelot, 0,
     ANA_AGENCTRL_LEARN_CPU_COPY | ANA_AGENCTRL_IGNORE_DMAC_FLAGS
     | ANA_AGENCTRL_LEARN_FWD_KILL
     | ANA_AGENCTRL_LEARN_IGNORE_VLAN,
     ANA_AGENCTRL);


 ocelot_write(ocelot, MACACCESS_CMD_INIT, ANA_TABLES_MACACCESS);
}
