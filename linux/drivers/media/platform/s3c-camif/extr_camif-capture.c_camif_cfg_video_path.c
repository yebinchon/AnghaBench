
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camif_vp {int scaler; } ;


 int WARN_ON (int ) ;
 int camif_hw_set_flip (struct camif_vp*) ;
 int camif_hw_set_output_dma (struct camif_vp*) ;
 int camif_hw_set_scaler (struct camif_vp*) ;
 int camif_hw_set_target_format (struct camif_vp*) ;
 int s3c_camif_get_scaler_config (struct camif_vp*,int *) ;

__attribute__((used)) static void camif_cfg_video_path(struct camif_vp *vp)
{
 WARN_ON(s3c_camif_get_scaler_config(vp, &vp->scaler));
 camif_hw_set_scaler(vp);
 camif_hw_set_flip(vp);
 camif_hw_set_target_format(vp);
 camif_hw_set_output_dma(vp);
}
