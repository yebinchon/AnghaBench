
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec64 {int dummy; } ;
struct ptp_clock_info {int dummy; } ;
struct mv88e6xxx_chip {int tstamp_cc; int tstamp_tc; } ;


 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 struct mv88e6xxx_chip* ptp_to_chip (struct ptp_clock_info*) ;
 int timecounter_init (int *,int *,int ) ;
 int timespec64_to_ns (struct timespec64 const*) ;

__attribute__((used)) static int mv88e6xxx_ptp_settime(struct ptp_clock_info *ptp,
     const struct timespec64 *ts)
{
 struct mv88e6xxx_chip *chip = ptp_to_chip(ptp);
 u64 ns;

 ns = timespec64_to_ns(ts);

 mv88e6xxx_reg_lock(chip);
 timecounter_init(&chip->tstamp_tc, &chip->tstamp_cc, ns);
 mv88e6xxx_reg_unlock(chip);

 return 0;
}
