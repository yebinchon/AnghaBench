
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock_request {int dummy; } ;
struct ptp_clock_info {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int
liquidio_ptp_enable(struct ptp_clock_info *ptp __attribute__((unused)),
      struct ptp_clock_request *rq __attribute__((unused)),
      int on __attribute__((unused)))
{
 return -EOPNOTSUPP;
}
