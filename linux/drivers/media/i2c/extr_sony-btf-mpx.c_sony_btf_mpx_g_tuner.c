
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int capability; int rxsubchans; int audmode; } ;
struct v4l2_subdev {int dummy; } ;
struct sony_btf_mpx {int audmode; } ;


 int V4L2_TUNER_CAP_LANG1 ;
 int V4L2_TUNER_CAP_LANG2 ;
 int V4L2_TUNER_CAP_NORM ;
 int V4L2_TUNER_CAP_STEREO ;
 int V4L2_TUNER_SUB_LANG1 ;
 int V4L2_TUNER_SUB_LANG2 ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 struct sony_btf_mpx* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int sony_btf_mpx_g_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
 struct sony_btf_mpx *t = to_state(sd);

 vt->capability = V4L2_TUNER_CAP_NORM |
  V4L2_TUNER_CAP_STEREO | V4L2_TUNER_CAP_LANG1 |
  V4L2_TUNER_CAP_LANG2;
 vt->rxsubchans = V4L2_TUNER_SUB_MONO |
  V4L2_TUNER_SUB_STEREO | V4L2_TUNER_SUB_LANG1 |
  V4L2_TUNER_SUB_LANG2;
 vt->audmode = t->audmode;
 return 0;
}
