
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6390_G1_MONITOR_MGMT_CTL_PTR_0180C200000XHI ;
 int MV88E6390_G1_MONITOR_MGMT_CTL_PTR_0180C200000XLO ;
 int MV88E6390_G1_MONITOR_MGMT_CTL_PTR_0180C200002XHI ;
 int MV88E6390_G1_MONITOR_MGMT_CTL_PTR_0180C200002XLO ;
 int mv88e6390_g1_monitor_write (struct mv88e6xxx_chip*,int ,int) ;

int mv88e6390_g1_mgmt_rsvd2cpu(struct mv88e6xxx_chip *chip)
{
 u16 ptr;
 int err;


 ptr = MV88E6390_G1_MONITOR_MGMT_CTL_PTR_0180C200000XLO;
 err = mv88e6390_g1_monitor_write(chip, ptr, 0xff);
 if (err)
  return err;


 ptr = MV88E6390_G1_MONITOR_MGMT_CTL_PTR_0180C200000XHI;
 err = mv88e6390_g1_monitor_write(chip, ptr, 0xff);
 if (err)
  return err;


 ptr = MV88E6390_G1_MONITOR_MGMT_CTL_PTR_0180C200002XLO;
 err = mv88e6390_g1_monitor_write(chip, ptr, 0xff);
 if (err)
  return err;


 ptr = MV88E6390_G1_MONITOR_MGMT_CTL_PTR_0180C200002XHI;
 err = mv88e6390_g1_monitor_write(chip, ptr, 0xff);
 if (err)
  return err;

 return 0;
}
