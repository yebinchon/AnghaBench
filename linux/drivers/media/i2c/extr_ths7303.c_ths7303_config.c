
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int pixelclock; } ;
struct ths7303_state {scalar_t__ std_id; TYPE_1__ bt; int stream_on; } ;


 int THS7303_CHANNEL_1 ;
 int THS7303_CHANNEL_2 ;
 int THS7303_CHANNEL_3 ;
 int THS7303_FILTER_MODE_1080P ;
 int THS7303_FILTER_MODE_480I_576I ;
 int THS7303_FILTER_MODE_480P_576P ;
 int THS7303_FILTER_MODE_720P_1080I ;
 int THS7303_FILTER_MODE_DISABLE ;
 int ths7303_read (struct v4l2_subdev*,int ) ;
 int ths7303_setval (struct v4l2_subdev*,int ) ;
 int ths7303_write (struct v4l2_subdev*,int ,int) ;
 struct ths7303_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ths7303_config(struct v4l2_subdev *sd)
{
 struct ths7303_state *state = to_state(sd);
 int res;

 if (!state->stream_on) {
  ths7303_write(sd, THS7303_CHANNEL_1,
         (ths7303_read(sd, THS7303_CHANNEL_1) & 0xf8) |
         0x00);
  ths7303_write(sd, THS7303_CHANNEL_2,
         (ths7303_read(sd, THS7303_CHANNEL_2) & 0xf8) |
         0x00);
  ths7303_write(sd, THS7303_CHANNEL_3,
         (ths7303_read(sd, THS7303_CHANNEL_3) & 0xf8) |
         0x00);
  return 0;
 }

 if (state->bt.pixelclock > 120000000)
  res = ths7303_setval(sd, THS7303_FILTER_MODE_1080P);
 else if (state->bt.pixelclock > 70000000)
  res = ths7303_setval(sd, THS7303_FILTER_MODE_720P_1080I);
 else if (state->bt.pixelclock > 20000000)
  res = ths7303_setval(sd, THS7303_FILTER_MODE_480P_576P);
 else if (state->std_id)
  res = ths7303_setval(sd, THS7303_FILTER_MODE_480I_576I);
 else

  res = ths7303_setval(sd, THS7303_FILTER_MODE_DISABLE);

 return res;

}
