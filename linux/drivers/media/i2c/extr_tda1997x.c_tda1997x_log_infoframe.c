
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union hdmi_infoframe {int dummy; } hdmi_infoframe ;
typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {TYPE_1__* client; } ;
typedef int buffer ;
struct TYPE_2__ {int dev; } ;


 int KERN_INFO ;
 int debug ;
 int hdmi_infoframe_log (int ,int *,union hdmi_infoframe*) ;
 int hdmi_infoframe_unpack (union hdmi_infoframe*,int *,int) ;
 int io_readn (struct v4l2_subdev*,int,int,int *) ;
 struct tda1997x_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int) ;
 int v4l_err (TYPE_1__*,char*,int,int,int ) ;

__attribute__((used)) static int tda1997x_log_infoframe(struct v4l2_subdev *sd, int addr)
{
 struct tda1997x_state *state = to_state(sd);
 union hdmi_infoframe frame;
 u8 buffer[40];
 int len, err;


 len = io_readn(sd, addr, sizeof(buffer), buffer);
 v4l2_dbg(1, debug, sd, "infoframe: addr=%d len=%d\n", addr, len);
 err = hdmi_infoframe_unpack(&frame, buffer, sizeof(buffer));
 if (err) {
  v4l_err(state->client,
   "failed parsing %d byte infoframe: 0x%04x/0x%02x\n",
   len, addr, buffer[0]);
  return err;
 }
 hdmi_infoframe_log(KERN_INFO, &state->client->dev, &frame);

 return 0;
}
