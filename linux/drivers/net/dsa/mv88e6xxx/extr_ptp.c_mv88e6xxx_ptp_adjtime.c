
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock_info {int dummy; } ;
struct mv88e6xxx_chip {int tstamp_tc; } ;
typedef int s64 ;


 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 struct mv88e6xxx_chip* ptp_to_chip (struct ptp_clock_info*) ;
 int timecounter_adjtime (int *,int ) ;

__attribute__((used)) static int mv88e6xxx_ptp_adjtime(struct ptp_clock_info *ptp, s64 delta)
{
 struct mv88e6xxx_chip *chip = ptp_to_chip(ptp);

 mv88e6xxx_reg_lock(chip);
 timecounter_adjtime(&chip->tstamp_tc, delta);
 mv88e6xxx_reg_unlock(chip);

 return 0;
}
