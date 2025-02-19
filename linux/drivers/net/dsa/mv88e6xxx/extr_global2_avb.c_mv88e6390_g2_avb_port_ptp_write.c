
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6352_G2_AVB_CMD_BLOCK_PTP ;
 int MV88E6390_G2_AVB_CMD_OP_WRITE ;
 int mv88e6xxx_g2_avb_write (struct mv88e6xxx_chip*,int,int) ;

__attribute__((used)) static int mv88e6390_g2_avb_port_ptp_write(struct mv88e6xxx_chip *chip,
        int port, int addr, u16 data)
{
 u16 writeop = MV88E6390_G2_AVB_CMD_OP_WRITE | (port << 8) |
        (MV88E6352_G2_AVB_CMD_BLOCK_PTP << 5) | addr;

 return mv88e6xxx_g2_avb_write(chip, writeop, data);
}
