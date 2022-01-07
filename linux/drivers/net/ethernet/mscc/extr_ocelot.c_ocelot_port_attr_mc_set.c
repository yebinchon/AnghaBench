
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocelot_port {int chip_port; struct ocelot* ocelot; } ;
struct ocelot {int dummy; } ;


 int ANA_PORT_CPU_FWD_CFG ;
 int ANA_PORT_CPU_FWD_CFG_CPU_IGMP_REDIR_ENA ;
 int ANA_PORT_CPU_FWD_CFG_CPU_IPMC_CTRL_COPY_ENA ;
 int ANA_PORT_CPU_FWD_CFG_CPU_MLD_REDIR_ENA ;
 int ocelot_read_gix (struct ocelot*,int ,int ) ;
 int ocelot_write_gix (struct ocelot*,int,int ,int ) ;

__attribute__((used)) static void ocelot_port_attr_mc_set(struct ocelot_port *port, bool mc)
{
 struct ocelot *ocelot = port->ocelot;
 u32 val = ocelot_read_gix(ocelot, ANA_PORT_CPU_FWD_CFG,
      port->chip_port);

 if (mc)
  val |= ANA_PORT_CPU_FWD_CFG_CPU_IGMP_REDIR_ENA |
         ANA_PORT_CPU_FWD_CFG_CPU_MLD_REDIR_ENA |
         ANA_PORT_CPU_FWD_CFG_CPU_IPMC_CTRL_COPY_ENA;
 else
  val &= ~(ANA_PORT_CPU_FWD_CFG_CPU_IGMP_REDIR_ENA |
    ANA_PORT_CPU_FWD_CFG_CPU_MLD_REDIR_ENA |
    ANA_PORT_CPU_FWD_CFG_CPU_IPMC_CTRL_COPY_ENA);

 ocelot_write_gix(ocelot, val, ANA_PORT_CPU_FWD_CFG, port->chip_port);
}
