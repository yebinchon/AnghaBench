
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ttusbdecfe_state {TYPE_1__* config; } ;
struct dvb_frontend {scalar_t__ demodulator_priv; } ;
struct dvb_diseqc_master_cmd {int msg_len; int msg; } ;
typedef int b ;
struct TYPE_2__ {int (* send_command ) (struct dvb_frontend*,int,int,int*,int *,int *) ;} ;


 int EINVAL ;
 int memcpy (int*,int ,int) ;
 int stub1 (struct dvb_frontend*,int,int,int*,int *,int *) ;

__attribute__((used)) static int ttusbdecfe_dvbs_diseqc_send_master_cmd(struct dvb_frontend* fe, struct dvb_diseqc_master_cmd *cmd)
{
 struct ttusbdecfe_state* state = (struct ttusbdecfe_state*) fe->demodulator_priv;
 u8 b[] = { 0x00, 0xff, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00,
     0x00, 0x00 };

 if (cmd->msg_len > sizeof(b) - 4)
  return -EINVAL;

 memcpy(&b[4], cmd->msg, cmd->msg_len);

 state->config->send_command(fe, 0x72,
        sizeof(b) - (6 - cmd->msg_len), b,
        ((void*)0), ((void*)0));

 return 0;
}
