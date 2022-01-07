
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx_dvb {int (* gate_ctrl ) (struct dvb_frontend*,int) ;int pll_mutex; } ;
struct dvb_frontend {struct em28xx_dvb* sec_priv; } ;


 int EINVAL ;
 int down (int *) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;
 int up (int *) ;

__attribute__((used)) static int drxk_gate_ctrl(struct dvb_frontend *fe, int enable)
{
 struct em28xx_dvb *dvb = fe->sec_priv;
 int status;

 if (!dvb)
  return -EINVAL;

 if (enable) {
  down(&dvb->pll_mutex);
  status = dvb->gate_ctrl(fe, 1);
 } else {
  status = dvb->gate_ctrl(fe, 0);
  up(&dvb->pll_mutex);
 }
 return status;
}
