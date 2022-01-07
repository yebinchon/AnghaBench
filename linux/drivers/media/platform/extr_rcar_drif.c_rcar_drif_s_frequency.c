
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {int dummy; } ;
struct TYPE_2__ {int subdev; } ;
struct rcar_drif_sdr {TYPE_1__ ep; } ;
struct file {int dummy; } ;


 int s_frequency ;
 int tuner ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_frequency const*) ;
 struct rcar_drif_sdr* video_drvdata (struct file*) ;

__attribute__((used)) static int rcar_drif_s_frequency(struct file *file, void *priv,
     const struct v4l2_frequency *f)
{
 struct rcar_drif_sdr *sdr = video_drvdata(file);

 return v4l2_subdev_call(sdr->ep.subdev, tuner, s_frequency, f);
}
