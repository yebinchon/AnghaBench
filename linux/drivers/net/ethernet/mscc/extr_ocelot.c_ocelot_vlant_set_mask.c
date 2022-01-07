
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ocelot {int dummy; } ;


 int ANA_TABLES_VLANACCESS ;
 int ANA_TABLES_VLANACCESS_CMD_WRITE ;
 int ANA_TABLES_VLANACCESS_VLAN_PORT_MASK (int ) ;
 int ANA_TABLES_VLANTIDX ;
 int ANA_TABLES_VLANTIDX_V_INDEX (int ) ;
 int ocelot_vlant_wait_for_completion (struct ocelot*) ;
 int ocelot_write (struct ocelot*,int,int ) ;

__attribute__((used)) static int ocelot_vlant_set_mask(struct ocelot *ocelot, u16 vid, u32 mask)
{

 ocelot_write(ocelot, ANA_TABLES_VLANTIDX_V_INDEX(vid),
       ANA_TABLES_VLANTIDX);

 ocelot_write(ocelot, ANA_TABLES_VLANACCESS_VLAN_PORT_MASK(mask) |
        ANA_TABLES_VLANACCESS_CMD_WRITE,
       ANA_TABLES_VLANACCESS);

 return ocelot_vlant_wait_for_completion(ocelot);
}
