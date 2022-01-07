
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ttusb_dec {int dummy; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_2__ {struct ttusb_dec* priv; } ;


 int ttusb_dec_send_command (struct ttusb_dec*,int const,int,int const*,int*,int *) ;

__attribute__((used)) static int fe_send_command(struct dvb_frontend* fe, const u8 command,
      int param_length, const u8 params[],
      int *result_length, u8 cmd_result[])
{
 struct ttusb_dec* dec = fe->dvb->priv;
 return ttusb_dec_send_command(dec, command, param_length, params, result_length, cmd_result);
}
