
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ngene_channel {TYPE_1__* dev; } ;
struct dvb_frontend {struct ngene_channel* analog_demod_priv; } ;
struct TYPE_2__ {int pll_mutex; } ;


 int down (int *) ;
 int up (int *) ;

__attribute__((used)) static void cineS2_tuner_i2c_lock(struct dvb_frontend *fe, int lock)
{
 struct ngene_channel *chan = fe->analog_demod_priv;

 if (lock)
  down(&chan->dev->pll_mutex);
 else
  up(&chan->dev->pll_mutex);
}
