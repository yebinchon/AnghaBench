
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_port {int chip_port; } ;
struct ocelot {int dummy; } ;


 int ANA_PORT_VCAP_S2_CFG ;
 int ANA_PORT_VCAP_S2_CFG_S2_ENA ;
 int ANA_PORT_VCAP_S2_CFG_S2_IP6_CFG (int) ;
 int ocelot_write_gix (struct ocelot*,int,int ,int ) ;

__attribute__((used)) static void ocelot_vcap_enable(struct ocelot *ocelot, struct ocelot_port *port)
{
 ocelot_write_gix(ocelot, ANA_PORT_VCAP_S2_CFG_S2_ENA |
    ANA_PORT_VCAP_S2_CFG_S2_IP6_CFG(0xa),
    ANA_PORT_VCAP_S2_CFG, port->chip_port);
}
