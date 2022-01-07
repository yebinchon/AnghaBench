
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ngene_channel {int (* gate_ctrl ) (struct dvb_frontend*,int) ;TYPE_1__* dev; } ;
struct dvb_frontend {struct ngene_channel* sec_priv; } ;
struct TYPE_2__ {int pll_mutex; } ;


 int down (int *) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;
 int up (int *) ;

__attribute__((used)) static int drxk_gate_ctrl(struct dvb_frontend *fe, int enable)
{
 struct ngene_channel *chan = fe->sec_priv;
 int status;

 if (enable) {
  down(&chan->dev->pll_mutex);
  status = chan->gate_ctrl(fe, 1);
 } else {
  status = chan->gate_ctrl(fe, 0);
  up(&chan->dev->pll_mutex);
 }
 return status;
}
