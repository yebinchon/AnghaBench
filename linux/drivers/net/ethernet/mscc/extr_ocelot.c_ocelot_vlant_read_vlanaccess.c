
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocelot {int dummy; } ;


 int ANA_TABLES_VLANACCESS ;
 int ocelot_read (struct ocelot*,int ) ;

__attribute__((used)) static inline u32 ocelot_vlant_read_vlanaccess(struct ocelot *ocelot)
{
 return ocelot_read(ocelot, ANA_TABLES_VLANACCESS);
}
