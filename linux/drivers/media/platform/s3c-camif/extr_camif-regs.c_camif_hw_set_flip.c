
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct camif_vp {int offset; int id; int camif; scalar_t__ vflip; scalar_t__ hflip; } ;


 int CITRGFMT_FLIP_MASK ;
 int CITRGFMT_FLIP_X_MIRROR ;
 int CITRGFMT_FLIP_Y_MIRROR ;
 int S3C_CAMIF_REG_CITRGFMT (int ,int ) ;
 int camif_read (int ,int ) ;
 int camif_write (int ,int ,int ) ;

void camif_hw_set_flip(struct camif_vp *vp)
{
 u32 cfg = camif_read(vp->camif,
    S3C_CAMIF_REG_CITRGFMT(vp->id, vp->offset));

 cfg &= ~CITRGFMT_FLIP_MASK;

 if (vp->hflip)
  cfg |= CITRGFMT_FLIP_Y_MIRROR;
 if (vp->vflip)
  cfg |= CITRGFMT_FLIP_X_MIRROR;

 camif_write(vp->camif, S3C_CAMIF_REG_CITRGFMT(vp->id, vp->offset), cfg);
}
