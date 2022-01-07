
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_control {unsigned int member_0; unsigned int id; unsigned int value; int const member_1; } ;
struct camif_dev {TYPE_2__* vp; TYPE_1__* variant; } ;
struct TYPE_4__ {int offset; } ;
struct TYPE_3__ {scalar_t__ ip_revision; } ;


 unsigned int ARRAY_SIZE (struct v4l2_control const*) ;




 unsigned int CIIMGEFF_FIN_MASK ;


 unsigned int CIIMGEFF_IE_ENABLE_MASK ;
 unsigned int CIIMGEFF_PAT_CBCR_MASK ;
 scalar_t__ S3C6400_CAMIF_IP_REV ;
 int S3C_CAMIF_REG_CIIMGEFF (int ) ;
 unsigned int camif_read (struct camif_dev*,int ) ;
 int camif_write (struct camif_dev*,int ,unsigned int) ;

void camif_hw_set_effect(struct camif_dev *camif, unsigned int effect,
   unsigned int cr, unsigned int cb)
{
 static const struct v4l2_control colorfx[] = {
  { 131, 139 },
  { 134, 141 },
  { 130, 141 },
  { 132, 137 },
  { 135, 140 },
  { 133, 138 },
  { 128, 136 },
  { 129, 141 },
 };
 unsigned int i, cfg;

 for (i = 0; i < ARRAY_SIZE(colorfx); i++)
  if (colorfx[i].id == effect)
   break;

 if (i == ARRAY_SIZE(colorfx))
  return;

 cfg = camif_read(camif, S3C_CAMIF_REG_CIIMGEFF(camif->vp->offset));

 cfg &= ~CIIMGEFF_FIN_MASK;
 cfg |= colorfx[i].value;

 if (camif->variant->ip_revision >= S3C6400_CAMIF_IP_REV) {
  if (effect == 131)
   cfg &= ~CIIMGEFF_IE_ENABLE_MASK;
  else
   cfg |= CIIMGEFF_IE_ENABLE_MASK;
 }
 cfg &= ~CIIMGEFF_PAT_CBCR_MASK;
 cfg |= cr | (cb << 13);
 camif_write(camif, S3C_CAMIF_REG_CIIMGEFF(camif->vp->offset), cfg);
}
