
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_PORT_PTP_CFG0 ;
 int MV88E6XXX_PORT_PTP_CFG0_DISABLE_TSPEC_MATCH ;
 int mv88e6xxx_port_ptp_write (struct mv88e6xxx_chip*,int,int ,int ) ;

int mv88e6352_hwtstamp_port_enable(struct mv88e6xxx_chip *chip, int port)
{
 return mv88e6xxx_port_ptp_write(chip, port, MV88E6XXX_PORT_PTP_CFG0,
     MV88E6XXX_PORT_PTP_CFG0_DISABLE_TSPEC_MATCH);
}
