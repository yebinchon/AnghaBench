
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6352_G2_AVB_CMD_PORT_TAIGLOBAL ;
 int mv88e6352_g2_avb_port_ptp_read (struct mv88e6xxx_chip*,int ,int,int *,int) ;

__attribute__((used)) static int mv88e6352_g2_avb_tai_read(struct mv88e6xxx_chip *chip, int addr,
         u16 *data, int len)
{
 return mv88e6352_g2_avb_port_ptp_read(chip,
     MV88E6352_G2_AVB_CMD_PORT_TAIGLOBAL,
     addr, data, len);
}
