
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;
struct mv88e6xxx_atu_entry {int* mac; } ;


 scalar_t__ MV88E6XXX_G1_ATU_MAC01 ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,scalar_t__,int) ;

__attribute__((used)) static int mv88e6xxx_g1_atu_mac_write(struct mv88e6xxx_chip *chip,
          struct mv88e6xxx_atu_entry *entry)
{
 u16 val;
 int i, err;

 for (i = 0; i < 3; i++) {
  val = (entry->mac[i * 2] << 8) | entry->mac[i * 2 + 1];
  err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_ATU_MAC01 + i, val);
  if (err)
   return err;
 }

 return 0;
}
