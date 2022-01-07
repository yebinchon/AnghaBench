
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct camif_vp {int id; int camif; } ;


 int MSCTRL_SEL_DMA_CAM ;
 int S3C_CAMIF_REG_MSCTRL (int ) ;
 int camif_read (int ,int ) ;
 int camif_write (int ,int ,int ) ;

void camif_hw_set_input_path(struct camif_vp *vp)
{
 u32 cfg = camif_read(vp->camif, S3C_CAMIF_REG_MSCTRL(vp->id));
 cfg &= ~MSCTRL_SEL_DMA_CAM;
 camif_write(vp->camif, S3C_CAMIF_REG_MSCTRL(vp->id), cfg);
}
