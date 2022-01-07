
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int voltage; } ;
struct dvb_frontend {struct firedtv* sec_priv; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;



__attribute__((used)) static int fdtv_set_voltage(struct dvb_frontend *fe,
       enum fe_sec_voltage voltage)
{
 struct firedtv *fdtv = fe->sec_priv;

 fdtv->voltage = voltage;
 return 0;
}
