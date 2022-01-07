
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct av7110 {int (* fe_diseqc_reset_overload ) (struct dvb_frontend*) ;} ;
struct TYPE_2__ {struct av7110* priv; } ;


 int av7110_fe_lock_fix (struct av7110*,int ) ;
 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static int av7110_fe_diseqc_reset_overload(struct dvb_frontend* fe)
{
 struct av7110* av7110 = fe->dvb->priv;

 int ret = av7110_fe_lock_fix(av7110, 0);
 if (!ret)
  ret = av7110->fe_diseqc_reset_overload(fe);
 return ret;
}
