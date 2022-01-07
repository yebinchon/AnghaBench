
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct camif_vp {int state; int * out_fmt; } ;
struct camif_dev {TYPE_1__* variant; } ;
struct TYPE_2__ {unsigned int ip_revision; } ;


 int EINVAL ;
 unsigned int S3C244X_CAMIF_IP_REV ;
 int ST_VP_CONFIG ;
 int camif_cfg_video_path (struct camif_vp*) ;
 int camif_hw_clear_fifo_overflow (struct camif_vp*) ;
 int camif_prepare_dma_offset (struct camif_vp*) ;

__attribute__((used)) static int s3c_camif_hw_vp_init(struct camif_dev *camif, struct camif_vp *vp)
{
 unsigned int ip_rev = camif->variant->ip_revision;

 if (vp->out_fmt == ((void*)0))
  return -EINVAL;

 camif_prepare_dma_offset(vp);
 if (ip_rev == S3C244X_CAMIF_IP_REV)
  camif_hw_clear_fifo_overflow(vp);
 camif_cfg_video_path(vp);
 vp->state &= ~ST_VP_CONFIG;
 return 0;
}
