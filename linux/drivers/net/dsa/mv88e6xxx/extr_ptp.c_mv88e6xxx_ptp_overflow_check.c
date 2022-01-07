
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct timespec64 {int dummy; } ;
struct mv88e6xxx_chip {int overflow_work; int ptp_clock_info; } ;
struct delayed_work {int dummy; } ;


 int MV88E6XXX_TAI_OVERFLOW_PERIOD ;
 struct mv88e6xxx_chip* dw_overflow_to_chip (struct delayed_work*) ;
 int mv88e6xxx_ptp_gettime (int *,struct timespec64*) ;
 int schedule_delayed_work (int *,int ) ;
 struct delayed_work* to_delayed_work (struct work_struct*) ;

__attribute__((used)) static void mv88e6xxx_ptp_overflow_check(struct work_struct *work)
{
 struct delayed_work *dw = to_delayed_work(work);
 struct mv88e6xxx_chip *chip = dw_overflow_to_chip(dw);
 struct timespec64 ts;

 mv88e6xxx_ptp_gettime(&chip->ptp_clock_info, &ts);

 schedule_delayed_work(&chip->overflow_work,
         MV88E6XXX_TAI_OVERFLOW_PERIOD);
}
