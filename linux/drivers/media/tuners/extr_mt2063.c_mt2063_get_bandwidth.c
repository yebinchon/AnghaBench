
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ f_out_bw; } ;
struct mt2063_state {TYPE_1__ AS_Data; int init; } ;
struct dvb_frontend {struct mt2063_state* tuner_priv; } ;


 int ENODEV ;
 int dprintk (int,char*,...) ;

__attribute__((used)) static int mt2063_get_bandwidth(struct dvb_frontend *fe, u32 *bw)
{
 struct mt2063_state *state = fe->tuner_priv;

 dprintk(2, "\n");

 if (!state->init)
  return -ENODEV;

 *bw = state->AS_Data.f_out_bw - 750000;

 dprintk(1, "bandwidth: %d\n", *bw);

 return 0;
}
