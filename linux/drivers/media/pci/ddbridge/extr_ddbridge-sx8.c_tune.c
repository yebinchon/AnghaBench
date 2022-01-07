
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int FE_HAS_LOCK ;
 int HZ ;
 int read_status (struct dvb_frontend*,int*) ;
 int set_parameters (struct dvb_frontend*) ;

__attribute__((used)) static int tune(struct dvb_frontend *fe, bool re_tune,
  unsigned int mode_flags,
  unsigned int *delay, enum fe_status *status)
{
 int r;

 if (re_tune) {
  r = set_parameters(fe);
  if (r)
   return r;
 }
 r = read_status(fe, status);
 if (r)
  return r;

 if (*status & FE_HAS_LOCK)
  return 0;
 *delay = HZ / 10;
 return 0;
}
