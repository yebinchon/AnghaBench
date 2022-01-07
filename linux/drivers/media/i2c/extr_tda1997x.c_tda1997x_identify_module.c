
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {int tmdsb_clk; int tmdsb_soc; int port_30bit; int output_2p5; void* chip_revision; TYPE_2__* client; TYPE_1__* info; struct v4l2_subdev sd; } ;
typedef enum tda1997x_type { ____Placeholder_tda1997x_type } tda1997x_type ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int type; } ;


 int EIO ;
 int REG_CMTP_REG10 ;
 int REG_CMTP_REG11 ;
 int TDA19971 ;
 int TDA19973 ;
 int dev_err (int *,char*) ;
 void* io_read (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int tda1997x_identify_module(struct tda1997x_state *state)
{
 struct v4l2_subdev *sd = &state->sd;
 enum tda1997x_type type;
 u8 reg;


 reg = io_read(sd, REG_CMTP_REG10);
 state->tmdsb_clk = (reg >> 6) & 0x01;
 state->tmdsb_soc = (reg >> 5) & 0x01;
 state->port_30bit = (reg >> 2) & 0x03;
 state->output_2p5 = (reg >> 1) & 0x01;
 switch ((reg >> 4) & 0x03) {
 case 0x00:
  type = TDA19971;
  break;
 case 0x02:
 case 0x03:
  type = TDA19973;
  break;
 default:
  dev_err(&state->client->dev, "unsupported chip ID\n");
  return -EIO;
 }
 if (state->info->type != type) {
  dev_err(&state->client->dev, "chip id mismatch\n");
  return -EIO;
 }


 state->chip_revision = io_read(sd, REG_CMTP_REG11);

 return 0;
}
