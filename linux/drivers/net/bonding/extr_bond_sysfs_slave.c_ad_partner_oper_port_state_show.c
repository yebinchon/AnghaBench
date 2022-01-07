
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slave {int bond; } ;
struct TYPE_3__ {int port_state; } ;
struct port {TYPE_1__ partner_oper; scalar_t__ aggregator; } ;
typedef int ssize_t ;
struct TYPE_4__ {struct port port; } ;


 scalar_t__ BOND_MODE (int ) ;
 scalar_t__ BOND_MODE_8023AD ;
 TYPE_2__* SLAVE_AD_INFO (struct slave*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t ad_partner_oper_port_state_show(struct slave *slave, char *buf)
{
 const struct port *ad_port;

 if (BOND_MODE(slave->bond) == BOND_MODE_8023AD) {
  ad_port = &SLAVE_AD_INFO(slave)->port;
  if (ad_port->aggregator)
   return sprintf(buf, "%u\n",
           ad_port->partner_oper.port_state);
 }

 return sprintf(buf, "N/A\n");
}
