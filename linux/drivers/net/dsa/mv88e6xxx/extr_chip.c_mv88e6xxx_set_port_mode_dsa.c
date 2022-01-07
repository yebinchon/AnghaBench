
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_EGRESS_MODE_UNMODIFIED ;
 int MV88E6XXX_FRAME_MODE_DSA ;
 int MV88E6XXX_PORT_ETH_TYPE_DEFAULT ;
 int mv88e6xxx_set_port_mode (struct mv88e6xxx_chip*,int,int ,int ,int ) ;

__attribute__((used)) static int mv88e6xxx_set_port_mode_dsa(struct mv88e6xxx_chip *chip, int port)
{
 return mv88e6xxx_set_port_mode(chip, port, MV88E6XXX_FRAME_MODE_DSA,
           MV88E6XXX_EGRESS_MODE_UNMODIFIED,
           MV88E6XXX_PORT_ETH_TYPE_DEFAULT);
}
