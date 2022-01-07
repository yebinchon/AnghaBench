
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tuner; int nr; struct mci_base* base; } ;
struct sx8 {TYPE_1__ mci; } ;
struct mci_base {int dev; } ;
struct dvb_frontend {struct sx8* demodulator_priv; } ;


 int EINVAL ;
 int SX8_TUNER_NUM ;
 int dev_dbg (int ,char*,int ,int) ;

__attribute__((used)) static int set_input(struct dvb_frontend *fe, int input)
{
 struct sx8 *state = fe->demodulator_priv;
 struct mci_base *mci_base = state->mci.base;

 if (input >= SX8_TUNER_NUM)
  return -EINVAL;

 state->mci.tuner = input;
 dev_dbg(mci_base->dev, "MCI-%d: input=%d\n", state->mci.nr, input);
 return 0;
}
