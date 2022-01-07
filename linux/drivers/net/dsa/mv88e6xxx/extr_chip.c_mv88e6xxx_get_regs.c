
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct ethtool_regs {int version; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;
struct TYPE_2__ {int prod_num; } ;


 int memset (int *,int,int) ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int,int *) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static void mv88e6xxx_get_regs(struct dsa_switch *ds, int port,
          struct ethtool_regs *regs, void *_p)
{
 struct mv88e6xxx_chip *chip = ds->priv;
 int err;
 u16 reg;
 u16 *p = _p;
 int i;

 regs->version = chip->info->prod_num;

 memset(p, 0xff, 32 * sizeof(u16));

 mv88e6xxx_reg_lock(chip);

 for (i = 0; i < 32; i++) {

  err = mv88e6xxx_port_read(chip, port, i, &reg);
  if (!err)
   p[i] = reg;
 }

 mv88e6xxx_reg_unlock(chip);
}
