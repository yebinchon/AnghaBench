
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6165_PTP_CFG ;
 int MV88E6165_PTP_CFG_DISABLE_PTP ;
 int mv88e6xxx_ptp_read (struct mv88e6xxx_chip*,int ,int *) ;
 int mv88e6xxx_ptp_write (struct mv88e6xxx_chip*,int ,int ) ;

int mv88e6165_global_disable(struct mv88e6xxx_chip *chip)
{
 u16 val;
 int err;

 err = mv88e6xxx_ptp_read(chip, MV88E6165_PTP_CFG, &val);
 if (err)
  return err;
 val |= MV88E6165_PTP_CFG_DISABLE_PTP;

 return mv88e6xxx_ptp_write(chip, MV88E6165_PTP_CFG, val);
}
