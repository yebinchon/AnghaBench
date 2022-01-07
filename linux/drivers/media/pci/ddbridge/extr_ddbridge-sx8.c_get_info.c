
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int demod; } ;
struct sx8 {int signal_info; TYPE_1__ mci; } ;
struct mci_command {int demod; int command; } ;
struct dvb_frontend {struct sx8* demodulator_priv; } ;
typedef int cmd ;


 int MCI_CMD_GETSIGNALINFO ;
 int ddb_mci_cmd (TYPE_1__*,struct mci_command*,int *) ;
 int memset (struct mci_command*,int ,int) ;

__attribute__((used)) static int get_info(struct dvb_frontend *fe)
{
 int stat;
 struct sx8 *state = fe->demodulator_priv;
 struct mci_command cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.command = MCI_CMD_GETSIGNALINFO;
 cmd.demod = state->mci.demod;
 stat = ddb_mci_cmd(&state->mci, &cmd, &state->signal_info);
 return stat;
}
