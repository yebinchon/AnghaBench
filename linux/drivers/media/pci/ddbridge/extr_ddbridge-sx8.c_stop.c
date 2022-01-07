
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct sx8_base {scalar_t__ iq_mode; scalar_t__* used_ldpc_bitrate; scalar_t__* demod_in_use; int * tuner_use_count; } ;
struct TYPE_3__ {size_t tuner; size_t demod; size_t nr; struct mci_base* base; } ;
struct sx8 {scalar_t__ started; TYPE_1__ mci; } ;
struct mci_command {size_t demod; scalar_t__ output; int command; } ;
struct mci_base {int tuner_lock; } ;
struct dvb_frontend {struct sx8* demodulator_priv; } ;
typedef int cmd ;


 int MCI_CMD_STOP ;
 int SX8_CMD_DISABLE_IQOUTPUT ;
 size_t SX8_DEMOD_NONE ;
 size_t SX8_DEMOD_NUM ;
 int SX8_TSCONFIG_MODE_NORMAL ;
 int ddb_mci_cmd (TYPE_1__*,struct mci_command*,int *) ;
 int ddb_mci_config (TYPE_1__*,int ) ;
 int mci_set_tuner (struct dvb_frontend*,size_t,int ) ;
 int memset (struct mci_command*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int stop(struct dvb_frontend *fe)
{
 struct sx8 *state = fe->demodulator_priv;
 struct mci_base *mci_base = state->mci.base;
 struct sx8_base *sx8_base = (struct sx8_base *)mci_base;
 struct mci_command cmd;
 u32 input = state->mci.tuner;

 memset(&cmd, 0, sizeof(cmd));
 if (state->mci.demod != SX8_DEMOD_NONE) {
  cmd.command = MCI_CMD_STOP;
  cmd.demod = state->mci.demod;
  ddb_mci_cmd(&state->mci, &cmd, ((void*)0));
  if (sx8_base->iq_mode) {
   cmd.command = SX8_CMD_DISABLE_IQOUTPUT;
   cmd.demod = state->mci.demod;
   cmd.output = 0;
   ddb_mci_cmd(&state->mci, &cmd, ((void*)0));
   ddb_mci_config(&state->mci, SX8_TSCONFIG_MODE_NORMAL);
  }
 }
 mutex_lock(&mci_base->tuner_lock);
 sx8_base->tuner_use_count[input]--;
 if (!sx8_base->tuner_use_count[input])
  mci_set_tuner(fe, input, 0);
 if (state->mci.demod < SX8_DEMOD_NUM) {
  sx8_base->demod_in_use[state->mci.demod] = 0;
  state->mci.demod = SX8_DEMOD_NONE;
 }
 sx8_base->used_ldpc_bitrate[state->mci.nr] = 0;
 sx8_base->iq_mode = 0;
 mutex_unlock(&mci_base->tuner_lock);
 state->started = 0;
 return 0;
}
