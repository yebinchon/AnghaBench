
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 unsigned char TDA7432_ATTEN_0DB ;
 int TDA7432_BASS_0DB ;
 unsigned char TDA7432_BASS_NORM ;
 unsigned char TDA7432_BASS_SYM ;
 unsigned char TDA7432_IN ;
 unsigned char TDA7432_LD_ON ;
 unsigned char TDA7432_STEREO_IN ;
 int TDA7432_TREBLE_0DB ;
 int i2c_master_send (struct i2c_client*,unsigned char*,int) ;
 char loudness ;
 int v4l2_err (struct v4l2_subdev*,char*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tda7432_set(struct v4l2_subdev *sd)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 unsigned char buf[16];

 buf[0] = TDA7432_IN;
 buf[1] = TDA7432_STEREO_IN |
    TDA7432_BASS_SYM |
    TDA7432_BASS_NORM;
 buf[2] = 0x3b;
 if (loudness)
  buf[2] |= TDA7432_LD_ON;
 buf[3] = TDA7432_TREBLE_0DB | (TDA7432_BASS_0DB << 4);
 buf[4] = TDA7432_ATTEN_0DB;
 buf[5] = TDA7432_ATTEN_0DB;
 buf[6] = TDA7432_ATTEN_0DB;
 buf[7] = TDA7432_ATTEN_0DB;
 buf[8] = loudness;
 if (9 != i2c_master_send(client, buf, 9)) {
  v4l2_err(sd, "I/O error, trying tda7432_set\n");
  return -1;
 }

 return 0;
}
