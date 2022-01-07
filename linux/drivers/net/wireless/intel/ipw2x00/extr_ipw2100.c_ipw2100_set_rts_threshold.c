
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw2100_priv {int rts_threshold; } ;
struct host_command {int host_command_length; int* host_command_parameters; int host_command_sequence; int host_command; } ;


 int MAX_RTS_THRESHOLD ;
 int RTS_DISABLED ;
 int RTS_THRESHOLD ;
 int ipw2100_hw_send_command (struct ipw2100_priv*,struct host_command*) ;

__attribute__((used)) static int ipw2100_set_rts_threshold(struct ipw2100_priv *priv, u32 threshold)
{
 struct host_command cmd = {
  .host_command = RTS_THRESHOLD,
  .host_command_sequence = 0,
  .host_command_length = 4
 };
 int err;

 if (threshold & RTS_DISABLED)
  cmd.host_command_parameters[0] = MAX_RTS_THRESHOLD;
 else
  cmd.host_command_parameters[0] = threshold & ~RTS_DISABLED;

 err = ipw2100_hw_send_command(priv, &cmd);
 if (err)
  return err;

 priv->rts_threshold = threshold;

 return 0;
}
