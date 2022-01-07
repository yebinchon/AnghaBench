
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int capability; int rxsubchans; } ;
struct v4l2_subdev {int dummy; } ;
struct saa6588 {scalar_t__ sync; } ;


 int V4L2_TUNER_CAP_RDS ;
 int V4L2_TUNER_CAP_RDS_BLOCK_IO ;
 int V4L2_TUNER_SUB_RDS ;
 struct saa6588* to_saa6588 (struct v4l2_subdev*) ;

__attribute__((used)) static int saa6588_g_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
 struct saa6588 *s = to_saa6588(sd);

 vt->capability |= V4L2_TUNER_CAP_RDS | V4L2_TUNER_CAP_RDS_BLOCK_IO;
 if (s->sync)
  vt->rxsubchans |= V4L2_TUNER_SUB_RDS;
 return 0;
}
