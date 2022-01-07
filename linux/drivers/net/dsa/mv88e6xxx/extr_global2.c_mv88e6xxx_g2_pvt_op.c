
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G2_PVT_ADDR ;
 int MV88E6XXX_G2_PVT_ADDR_BUSY ;
 int mv88e6xxx_g2_pvt_op_wait (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6xxx_g2_pvt_op(struct mv88e6xxx_chip *chip, int src_dev,
          int src_port, u16 op)
{
 int err;




 op |= MV88E6XXX_G2_PVT_ADDR_BUSY;
 op |= (src_dev & 0x1f) << 4;
 op |= (src_port & 0xf);

 err = mv88e6xxx_g2_write(chip, MV88E6XXX_G2_PVT_ADDR, op);
 if (err)
  return err;

 return mv88e6xxx_g2_pvt_op_wait(chip);
}
