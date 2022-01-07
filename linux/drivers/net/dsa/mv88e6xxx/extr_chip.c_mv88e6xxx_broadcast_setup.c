
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int mv88e6xxx_num_ports (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_port_add_broadcast (struct mv88e6xxx_chip*,int,int ) ;

__attribute__((used)) static int mv88e6xxx_broadcast_setup(struct mv88e6xxx_chip *chip, u16 vid)
{
 int port;
 int err;

 for (port = 0; port < mv88e6xxx_num_ports(chip); port++) {
  err = mv88e6xxx_port_add_broadcast(chip, port, vid);
  if (err)
   return err;
 }

 return 0;
}
