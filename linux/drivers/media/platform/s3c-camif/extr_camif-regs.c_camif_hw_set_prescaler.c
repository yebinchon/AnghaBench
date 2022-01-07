
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct camif_scaler {int h_shift; int v_shift; int pre_h_ratio; int pre_v_ratio; int pre_dst_width; int pre_dst_height; } ;
struct camif_vp {int offset; int id; struct camif_scaler scaler; struct camif_dev* camif; } ;
struct camif_dev {int dummy; } ;


 int S3C_CAMIF_REG_CISCPREDST (int ,int ) ;
 int S3C_CAMIF_REG_CISCPRERATIO (int ,int ) ;
 int camif_write (struct camif_dev*,int,int) ;

__attribute__((used)) static void camif_hw_set_prescaler(struct camif_vp *vp)
{
 struct camif_dev *camif = vp->camif;
 struct camif_scaler *sc = &vp->scaler;
 u32 cfg, shfactor, addr;

 addr = S3C_CAMIF_REG_CISCPRERATIO(vp->id, vp->offset);

 shfactor = 10 - (sc->h_shift + sc->v_shift);
 cfg = shfactor << 28;

 cfg |= (sc->pre_h_ratio << 16) | sc->pre_v_ratio;
 camif_write(camif, addr, cfg);

 cfg = (sc->pre_dst_width << 16) | sc->pre_dst_height;
 camif_write(camif, S3C_CAMIF_REG_CISCPREDST(vp->id, vp->offset), cfg);
}
