
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct av7110 {int (* fe_read_status ) (struct dvb_frontend*,int*) ;int fe_status; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;
struct TYPE_2__ {struct av7110* priv; } ;


 int FE_HAS_LOCK ;
 int av7110_fe_lock_fix (struct av7110*,int) ;
 int stub1 (struct dvb_frontend*,int*) ;

__attribute__((used)) static int av7110_fe_read_status(struct dvb_frontend *fe,
     enum fe_status *status)
{
 struct av7110* av7110 = fe->dvb->priv;


 int ret = av7110->fe_read_status(fe, status);
 if (!ret)
  if (((*status ^ av7110->fe_status) & FE_HAS_LOCK) && (*status & FE_HAS_LOCK))
   ret = av7110_fe_lock_fix(av7110, *status);
 return ret;
}
