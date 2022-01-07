
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {int dummy; } ;
struct TYPE_2__ {int subdev; } ;
struct rcar_drif_sdr {TYPE_1__ ep; } ;
struct file {int dummy; } ;


 int g_tuner ;
 int tuner ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_tuner*) ;
 struct rcar_drif_sdr* video_drvdata (struct file*) ;

__attribute__((used)) static int rcar_drif_g_tuner(struct file *file, void *priv,
        struct v4l2_tuner *vt)
{
 struct rcar_drif_sdr *sdr = video_drvdata(file);

 return v4l2_subdev_call(sdr->ep.subdev, tuner, g_tuner, vt);
}
