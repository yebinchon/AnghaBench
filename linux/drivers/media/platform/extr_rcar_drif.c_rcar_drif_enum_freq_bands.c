
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency_band {int dummy; } ;
struct TYPE_2__ {int subdev; } ;
struct rcar_drif_sdr {TYPE_1__ ep; } ;
struct file {int dummy; } ;


 int enum_freq_bands ;
 int tuner ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_frequency_band*) ;
 struct rcar_drif_sdr* video_drvdata (struct file*) ;

__attribute__((used)) static int rcar_drif_enum_freq_bands(struct file *file, void *priv,
         struct v4l2_frequency_band *band)
{
 struct rcar_drif_sdr *sdr = video_drvdata(file);

 return v4l2_subdev_call(sdr->ep.subdev, tuner, enum_freq_bands, band);
}
