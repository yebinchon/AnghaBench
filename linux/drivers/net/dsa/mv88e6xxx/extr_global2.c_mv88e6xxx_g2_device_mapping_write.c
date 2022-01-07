
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G2_DEVICE_MAPPING ;
 int MV88E6XXX_G2_DEVICE_MAPPING_UPDATE ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int) ;

int mv88e6xxx_g2_device_mapping_write(struct mv88e6xxx_chip *chip, int target,
          int port)
{
 u16 val = (target << 8) | (port & 0x1f);




 return mv88e6xxx_g2_write(chip, MV88E6XXX_G2_DEVICE_MAPPING,
      MV88E6XXX_G2_DEVICE_MAPPING_UPDATE | val);
}
