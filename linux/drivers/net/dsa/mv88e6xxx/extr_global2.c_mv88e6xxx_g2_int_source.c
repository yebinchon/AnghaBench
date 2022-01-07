
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G2_INT_SRC ;
 int mv88e6xxx_g2_read (struct mv88e6xxx_chip*,int ,int *) ;

__attribute__((used)) static int mv88e6xxx_g2_int_source(struct mv88e6xxx_chip *chip, u16 *src)
{

 return mv88e6xxx_g2_read(chip, MV88E6XXX_G2_INT_SRC, src);
}
