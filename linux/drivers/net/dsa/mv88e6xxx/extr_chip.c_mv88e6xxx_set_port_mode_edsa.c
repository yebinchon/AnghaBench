
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int ETH_P_EDSA ;
 int MV88E6XXX_EGRESS_MODE_ETHERTYPE ;
 int MV88E6XXX_FRAME_MODE_ETHERTYPE ;
 int mv88e6xxx_set_port_mode (struct mv88e6xxx_chip*,int,int ,int ,int ) ;

__attribute__((used)) static int mv88e6xxx_set_port_mode_edsa(struct mv88e6xxx_chip *chip, int port)
{
 return mv88e6xxx_set_port_mode(chip, port,
           MV88E6XXX_FRAME_MODE_ETHERTYPE,
           MV88E6XXX_EGRESS_MODE_ETHERTYPE,
           ETH_P_EDSA);
}
