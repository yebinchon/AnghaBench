
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv88e6xxx_chip {int dev; TYPE_1__* info; } ;
struct TYPE_2__ {scalar_t__ global2_addr; } ;


 int EOPNOTSUPP ;
 int dev_err (int ,char*) ;

__attribute__((used)) static inline int mv88e6xxx_g2_require(struct mv88e6xxx_chip *chip)
{
 if (chip->info->global2_addr) {
  dev_err(chip->dev, "this chip requires CONFIG_NET_DSA_MV88E6XXX_GLOBAL2 enabled\n");
  return -EOPNOTSUPP;
 }

 return 0;
}
