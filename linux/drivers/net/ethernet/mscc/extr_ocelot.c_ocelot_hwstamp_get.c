
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_port {struct ocelot* ocelot; } ;
struct ocelot {int hwtstamp_config; } ;
struct ifreq {int ifr_data; } ;


 int EFAULT ;
 scalar_t__ copy_to_user (int ,int *,int) ;

__attribute__((used)) static int ocelot_hwstamp_get(struct ocelot_port *port, struct ifreq *ifr)
{
 struct ocelot *ocelot = port->ocelot;

 return copy_to_user(ifr->ifr_data, &ocelot->hwtstamp_config,
       sizeof(ocelot->hwtstamp_config)) ? -EFAULT : 0;
}
