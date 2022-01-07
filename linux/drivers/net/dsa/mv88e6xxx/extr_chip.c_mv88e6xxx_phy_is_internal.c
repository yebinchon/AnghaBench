
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;
struct TYPE_2__ {int num_internal_phys; } ;



__attribute__((used)) static int mv88e6xxx_phy_is_internal(struct dsa_switch *ds, int port)
{
 struct mv88e6xxx_chip *chip = ds->priv;

 return port < chip->info->num_internal_phys;
}
