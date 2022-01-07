
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ocelot {int num_phys_ports; scalar_t__* vlan_mask; } ;


 int ANA_PORT_VLAN_CFG ;
 int ANA_PORT_VLAN_CFG_VLAN_AWARE_ENA ;
 int ANA_PORT_VLAN_CFG_VLAN_POP_CNT (int) ;
 int ANA_PORT_VLAN_CFG_VLAN_VID (int ) ;
 int ANA_TABLES_VLANACCESS ;
 scalar_t__ ANA_TABLES_VLANACCESS_CMD_INIT ;
 int ANA_VLANMASK ;
 scalar_t__ GENMASK (int,int ) ;
 int REW_PORT_VLAN_CFG ;
 int REW_TAG_CFG ;
 size_t VLAN_N_VID ;
 int ocelot_vlant_set_mask (struct ocelot*,size_t,scalar_t__) ;
 int ocelot_vlant_wait_for_completion (struct ocelot*) ;
 int ocelot_write (struct ocelot*,scalar_t__,int ) ;
 int ocelot_write_gix (struct ocelot*,int,int ,size_t) ;

__attribute__((used)) static void ocelot_vlan_init(struct ocelot *ocelot)
{
 u16 port, vid;


 ocelot_write(ocelot, ANA_TABLES_VLANACCESS_CMD_INIT,
       ANA_TABLES_VLANACCESS);
 ocelot_vlant_wait_for_completion(ocelot);


 for (vid = 1; vid < VLAN_N_VID; vid++) {
  ocelot->vlan_mask[vid] = 0;
  ocelot_vlant_set_mask(ocelot, vid, ocelot->vlan_mask[vid]);
 }





 ocelot->vlan_mask[0] = GENMASK(ocelot->num_phys_ports - 1, 0);
 ocelot_vlant_set_mask(ocelot, 0, ocelot->vlan_mask[0]);


 ocelot_write_gix(ocelot, ANA_PORT_VLAN_CFG_VLAN_VID(0) |
     ANA_PORT_VLAN_CFG_VLAN_AWARE_ENA |
     ANA_PORT_VLAN_CFG_VLAN_POP_CNT(1),
    ANA_PORT_VLAN_CFG, ocelot->num_phys_ports);




 ocelot_write(ocelot, GENMASK(9, 0), ANA_VLANMASK);

 for (port = 0; port < ocelot->num_phys_ports; port++) {
  ocelot_write_gix(ocelot, 0, REW_PORT_VLAN_CFG, port);
  ocelot_write_gix(ocelot, 0, REW_TAG_CFG, port);
 }
}
