
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slave {int bond; } ;
struct aggregator {int aggregator_identifier; } ;
typedef int ssize_t ;
struct TYPE_3__ {struct aggregator* aggregator; } ;
struct TYPE_4__ {TYPE_1__ port; } ;


 scalar_t__ BOND_MODE (int ) ;
 scalar_t__ BOND_MODE_8023AD ;
 TYPE_2__* SLAVE_AD_INFO (struct slave*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t ad_aggregator_id_show(struct slave *slave, char *buf)
{
 const struct aggregator *agg;

 if (BOND_MODE(slave->bond) == BOND_MODE_8023AD) {
  agg = SLAVE_AD_INFO(slave)->port.aggregator;
  if (agg)
   return sprintf(buf, "%d\n",
           agg->aggregator_identifier);
 }

 return sprintf(buf, "N/A\n");
}
