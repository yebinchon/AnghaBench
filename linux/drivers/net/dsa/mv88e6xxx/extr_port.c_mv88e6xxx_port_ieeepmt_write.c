
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6390_PORT_IEEE_PRIO_MAP_TABLE ;
 int MV88E6390_PORT_IEEE_PRIO_MAP_TABLE_DATA_MASK ;
 int MV88E6390_PORT_IEEE_PRIO_MAP_TABLE_PTR_MASK ;
 int MV88E6390_PORT_IEEE_PRIO_MAP_TABLE_UPDATE ;
 int __bf_shf (int ) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int) ;

__attribute__((used)) static int mv88e6xxx_port_ieeepmt_write(struct mv88e6xxx_chip *chip,
     int port, u16 table, u8 ptr, u16 data)
{
 u16 reg;

 reg = MV88E6390_PORT_IEEE_PRIO_MAP_TABLE_UPDATE | table |
  (ptr << __bf_shf(MV88E6390_PORT_IEEE_PRIO_MAP_TABLE_PTR_MASK)) |
  (data & MV88E6390_PORT_IEEE_PRIO_MAP_TABLE_DATA_MASK);

 return mv88e6xxx_port_write(chip, port,
        MV88E6390_PORT_IEEE_PRIO_MAP_TABLE, reg);
}
