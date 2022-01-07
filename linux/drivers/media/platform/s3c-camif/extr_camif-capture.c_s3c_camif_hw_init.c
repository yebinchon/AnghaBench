
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_camif_variant {scalar_t__ ip_revision; scalar_t__ has_img_effect; } ;
struct camif_vp {int state; int * out_fmt; } ;
struct TYPE_2__ {int * sd; } ;
struct camif_dev {int colorfx_cb; int colorfx_cr; int colorfx; int test_pattern; TYPE_1__ sensor; struct s3c_camif_variant* variant; } ;


 int EINVAL ;
 scalar_t__ S3C244X_CAMIF_IP_REV ;
 scalar_t__ S3C6410_CAMIF_IP_REV ;
 int ST_VP_CONFIG ;
 int camif_cfg_video_path (struct camif_vp*) ;
 int camif_hw_clear_fifo_overflow (struct camif_vp*) ;
 int camif_hw_set_camera_bus (struct camif_dev*) ;
 int camif_hw_set_camera_crop (struct camif_dev*) ;
 int camif_hw_set_effect (struct camif_dev*,int ,int ,int ) ;
 int camif_hw_set_input_path (struct camif_vp*) ;
 int camif_hw_set_source_format (struct camif_dev*) ;
 int camif_hw_set_test_pattern (struct camif_dev*,int ) ;

__attribute__((used)) static int s3c_camif_hw_init(struct camif_dev *camif, struct camif_vp *vp)
{
 const struct s3c_camif_variant *variant = camif->variant;

 if (camif->sensor.sd == ((void*)0) || vp->out_fmt == ((void*)0))
  return -EINVAL;

 if (variant->ip_revision == S3C244X_CAMIF_IP_REV)
  camif_hw_clear_fifo_overflow(vp);
 camif_hw_set_camera_bus(camif);
 camif_hw_set_source_format(camif);
 camif_hw_set_camera_crop(camif);
 camif_hw_set_test_pattern(camif, camif->test_pattern);
 if (variant->has_img_effect)
  camif_hw_set_effect(camif, camif->colorfx,
    camif->colorfx_cr, camif->colorfx_cb);
 if (variant->ip_revision == S3C6410_CAMIF_IP_REV)
  camif_hw_set_input_path(vp);
 camif_cfg_video_path(vp);
 vp->state &= ~ST_VP_CONFIG;

 return 0;
}
