
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_ATU_DATA_STATE_MC_STATIC ;
 int mv88e6xxx_port_db_load_purge (struct mv88e6xxx_chip*,int,char const*,int ,int ) ;

__attribute__((used)) static int mv88e6xxx_port_add_broadcast(struct mv88e6xxx_chip *chip, int port,
     u16 vid)
{
 const char broadcast[6] = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };
 u8 state = MV88E6XXX_G1_ATU_DATA_STATE_MC_STATIC;

 return mv88e6xxx_port_db_load_purge(chip, port, broadcast, vid, state);
}
