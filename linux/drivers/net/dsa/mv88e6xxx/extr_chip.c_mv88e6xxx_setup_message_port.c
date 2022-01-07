
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int ds; } ;


 int dsa_is_dsa_port (int ,int) ;
 int mv88e6xxx_port_set_message_port (struct mv88e6xxx_chip*,int,int) ;

__attribute__((used)) static int mv88e6xxx_setup_message_port(struct mv88e6xxx_chip *chip, int port)
{
 bool message = dsa_is_dsa_port(chip->ds, port);

 return mv88e6xxx_port_set_message_port(chip, port, message);
}
