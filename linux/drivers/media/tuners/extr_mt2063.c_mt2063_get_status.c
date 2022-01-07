
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mt2063_state {int init; } ;
struct dvb_frontend {struct mt2063_state* tuner_priv; } ;


 int ENODEV ;
 scalar_t__ TUNER_STATUS_LOCKED ;
 int dprintk (int,char*,...) ;
 int mt2063_lockStatus (struct mt2063_state*) ;

__attribute__((used)) static int mt2063_get_status(struct dvb_frontend *fe, u32 *tuner_status)
{
 struct mt2063_state *state = fe->tuner_priv;
 int status;

 dprintk(2, "\n");

 if (!state->init)
  return -ENODEV;

 *tuner_status = 0;
 status = mt2063_lockStatus(state);
 if (status < 0)
  return status;
 if (status)
  *tuner_status = TUNER_STATUS_LOCKED;

 dprintk(1, "Tuner status: %d", *tuner_status);

 return 0;
}
