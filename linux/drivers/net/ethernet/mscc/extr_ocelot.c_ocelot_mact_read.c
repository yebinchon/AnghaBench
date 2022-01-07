
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocelot_port {int chip_port; struct ocelot* ocelot; } ;
struct ocelot_mact_entry {int vid; int mac; } ;
struct ocelot {int dummy; } ;


 int ANA_TABLES_MACACCESS ;
 int ANA_TABLES_MACACCESS_DEST_IDX_M ;
 int ANA_TABLES_MACACCESS_MAC_TABLE_CMD (int ) ;
 int ANA_TABLES_MACACCESS_VALID ;
 int ANA_TABLES_MACHDATA ;
 int ANA_TABLES_MACLDATA ;
 int ANA_TABLES_MACTINDX_BUCKET ;
 int ANA_TABLES_MACTINDX_M_INDEX ;
 int EINVAL ;
 int ETH_ALEN ;
 int ETIMEDOUT ;
 int MACACCESS_CMD_READ ;
 int ether_addr_copy (int ,char*) ;
 int ocelot_field_write (struct ocelot*,int ,int) ;
 scalar_t__ ocelot_mact_wait_for_completion (struct ocelot*) ;
 int ocelot_read (struct ocelot*,int ) ;
 int ocelot_write (struct ocelot*,int ,int ) ;

__attribute__((used)) static inline int ocelot_mact_read(struct ocelot_port *port, int row, int col,
       struct ocelot_mact_entry *entry)
{
 struct ocelot *ocelot = port->ocelot;
 char mac[ETH_ALEN];
 u32 val, dst, macl, mach;


 ocelot_field_write(ocelot, ANA_TABLES_MACTINDX_M_INDEX, row);
 ocelot_field_write(ocelot, ANA_TABLES_MACTINDX_BUCKET, col);


 ocelot_write(ocelot,
       ANA_TABLES_MACACCESS_MAC_TABLE_CMD(MACACCESS_CMD_READ),
       ANA_TABLES_MACACCESS);

 if (ocelot_mact_wait_for_completion(ocelot))
  return -ETIMEDOUT;


 val = ocelot_read(ocelot, ANA_TABLES_MACACCESS);
 if (!(val & ANA_TABLES_MACACCESS_VALID))
  return -EINVAL;




 dst = (val & ANA_TABLES_MACACCESS_DEST_IDX_M) >> 3;
 if (dst != port->chip_port)
  return -EINVAL;


 macl = ocelot_read(ocelot, ANA_TABLES_MACLDATA);
 mach = ocelot_read(ocelot, ANA_TABLES_MACHDATA);

 mac[0] = (mach >> 8) & 0xff;
 mac[1] = (mach >> 0) & 0xff;
 mac[2] = (macl >> 24) & 0xff;
 mac[3] = (macl >> 16) & 0xff;
 mac[4] = (macl >> 8) & 0xff;
 mac[5] = (macl >> 0) & 0xff;

 entry->vid = (mach >> 16) & 0xfff;
 ether_addr_copy(entry->mac, mac);

 return 0;
}
