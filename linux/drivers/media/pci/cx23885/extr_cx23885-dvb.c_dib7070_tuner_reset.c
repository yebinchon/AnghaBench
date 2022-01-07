
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib7000p_ops* sec_priv; } ;
struct dib7000p_ops {int (* set_gpio ) (struct dvb_frontend*,int,int ,int) ;} ;


 int stub1 (struct dvb_frontend*,int,int ,int) ;

__attribute__((used)) static int dib7070_tuner_reset(struct dvb_frontend *fe, int onoff)
{
 struct dib7000p_ops *dib7000p_ops = fe->sec_priv;

 return dib7000p_ops->set_gpio(fe, 8, 0, !onoff);
}
