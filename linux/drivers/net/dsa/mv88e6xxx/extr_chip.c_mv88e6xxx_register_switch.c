
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv88e6xxx_chip {TYPE_1__* info; struct device* dev; } ;
struct dsa_switch {int ageing_time_min; int ageing_time_max; int * ops; struct device* dev; struct mv88e6xxx_chip* priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int age_time_coeff; } ;


 int ENOMEM ;
 int U8_MAX ;
 int dev_set_drvdata (struct device*,struct dsa_switch*) ;
 int dsa_register_switch (struct dsa_switch*) ;
 struct dsa_switch* dsa_switch_alloc (struct device*,int ) ;
 int mv88e6xxx_num_ports (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_switch_ops ;

__attribute__((used)) static int mv88e6xxx_register_switch(struct mv88e6xxx_chip *chip)
{
 struct device *dev = chip->dev;
 struct dsa_switch *ds;

 ds = dsa_switch_alloc(dev, mv88e6xxx_num_ports(chip));
 if (!ds)
  return -ENOMEM;

 ds->priv = chip;
 ds->dev = dev;
 ds->ops = &mv88e6xxx_switch_ops;
 ds->ageing_time_min = chip->info->age_time_coeff;
 ds->ageing_time_max = chip->info->age_time_coeff * U8_MAX;

 dev_set_drvdata(dev, ds);

 return dsa_register_switch(ds);
}
