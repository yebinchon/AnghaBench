
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6390_G1_MONITOR_MGMT_CTL_PTR_CPU_DEST ;
 int mv88e6390_g1_monitor_write (struct mv88e6xxx_chip*,int ,int) ;

int mv88e6390_g1_set_cpu_port(struct mv88e6xxx_chip *chip, int port)
{
 u16 ptr = MV88E6390_G1_MONITOR_MGMT_CTL_PTR_CPU_DEST;

 return mv88e6390_g1_monitor_write(chip, ptr, port);
}
