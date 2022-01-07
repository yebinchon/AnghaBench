
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocelot_port {struct ocelot* ocelot; } ;
struct ocelot {int dummy; } ;


 int ANA_AUTOAGE ;
 int ANA_AUTOAGE_AGE_PERIOD (int) ;
 unsigned long clock_t_to_jiffies (unsigned long) ;
 int jiffies_to_msecs (unsigned long) ;
 int ocelot_write (struct ocelot*,int ,int ) ;

__attribute__((used)) static void ocelot_port_attr_ageing_set(struct ocelot_port *ocelot_port,
     unsigned long ageing_clock_t)
{
 struct ocelot *ocelot = ocelot_port->ocelot;
 unsigned long ageing_jiffies = clock_t_to_jiffies(ageing_clock_t);
 u32 ageing_time = jiffies_to_msecs(ageing_jiffies) / 1000;

 ocelot_write(ocelot, ANA_AUTOAGE_AGE_PERIOD(ageing_time / 2),
       ANA_AUTOAGE);
}
