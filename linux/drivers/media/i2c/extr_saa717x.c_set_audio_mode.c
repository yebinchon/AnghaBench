
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int debug ;
 int ** reg_set_audio_template ;
 int saa717x_write (struct v4l2_subdev*,int,int ) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static void set_audio_mode(struct v4l2_subdev *sd, int audio_mode)
{
 v4l2_dbg(1, debug, sd, "writing registers to set audio mode by set %d\n",
   audio_mode);

 saa717x_write(sd, 0x46c, reg_set_audio_template[audio_mode][0]);
 saa717x_write(sd, 0x470, reg_set_audio_template[audio_mode][1]);
}
