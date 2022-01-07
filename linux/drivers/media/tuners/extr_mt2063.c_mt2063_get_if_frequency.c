
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int f_out; } ;
struct mt2063_state {TYPE_1__ AS_Data; int init; } ;
struct dvb_frontend {struct mt2063_state* tuner_priv; } ;


 int ENODEV ;
 int dprintk (int,char*,...) ;

__attribute__((used)) static int mt2063_get_if_frequency(struct dvb_frontend *fe, u32 *freq)
{
 struct mt2063_state *state = fe->tuner_priv;

 dprintk(2, "\n");

 if (!state->init)
  return -ENODEV;

 *freq = state->AS_Data.f_out;

 dprintk(1, "IF frequency: %d\n", *freq);

 return 0;
}
