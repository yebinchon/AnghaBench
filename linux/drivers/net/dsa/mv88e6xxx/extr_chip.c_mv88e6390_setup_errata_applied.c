
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dev; } ;


 int dev_err (int ,char*,int) ;
 int mv88e6xxx_num_ports (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_port_hidden_read (struct mv88e6xxx_chip*,int,int,int ,int*) ;

__attribute__((used)) static bool mv88e6390_setup_errata_applied(struct mv88e6xxx_chip *chip)
{
 int port;
 int err;
 u16 val;

 for (port = 0; port < mv88e6xxx_num_ports(chip); port++) {
  err = mv88e6xxx_port_hidden_read(chip, 0xf, port, 0, &val);
  if (err) {
   dev_err(chip->dev,
    "Error reading hidden register: %d\n", err);
   return 0;
  }
  if (val != 0x01c0)
   return 0;
 }

 return 1;
}
