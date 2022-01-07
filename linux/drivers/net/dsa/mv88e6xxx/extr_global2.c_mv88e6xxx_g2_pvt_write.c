
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G2_PVT_ADDR_OP_WRITE_PVLAN ;
 int MV88E6XXX_G2_PVT_DATA ;
 int mv88e6xxx_g2_pvt_op (struct mv88e6xxx_chip*,int,int,int ) ;
 int mv88e6xxx_g2_pvt_op_wait (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int ) ;

int mv88e6xxx_g2_pvt_write(struct mv88e6xxx_chip *chip, int src_dev,
      int src_port, u16 data)
{
 int err;

 err = mv88e6xxx_g2_pvt_op_wait(chip);
 if (err)
  return err;

 err = mv88e6xxx_g2_write(chip, MV88E6XXX_G2_PVT_DATA, data);
 if (err)
  return err;

 return mv88e6xxx_g2_pvt_op(chip, src_dev, src_port,
       MV88E6XXX_G2_PVT_ADDR_OP_WRITE_PVLAN);
}
