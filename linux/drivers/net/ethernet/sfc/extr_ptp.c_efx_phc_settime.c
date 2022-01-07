
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct ptp_clock_info {int dummy; } ;


 int efx_phc_adjtime (struct ptp_clock_info*,int ) ;
 int efx_phc_gettime (struct ptp_clock_info*,struct timespec64*) ;
 struct timespec64 timespec64_sub (struct timespec64 const,struct timespec64) ;
 int timespec64_to_ns (struct timespec64*) ;

__attribute__((used)) static int efx_phc_settime(struct ptp_clock_info *ptp,
      const struct timespec64 *e_ts)
{




 int rc;
 struct timespec64 time_now;
 struct timespec64 delta;

 rc = efx_phc_gettime(ptp, &time_now);
 if (rc != 0)
  return rc;

 delta = timespec64_sub(*e_ts, time_now);

 rc = efx_phc_adjtime(ptp, timespec64_to_ns(&delta));
 if (rc != 0)
  return rc;

 return 0;
}
