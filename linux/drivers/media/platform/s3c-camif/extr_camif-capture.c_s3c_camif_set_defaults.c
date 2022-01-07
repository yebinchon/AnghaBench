
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int enable; } ;
struct TYPE_6__ {void* height; void* width; } ;
struct camif_frame {int f_width; int f_height; void* height; void* width; int code; TYPE_2__ rect; } ;
struct camif_vp {int id; int payload; TYPE_4__* out_fmt; TYPE_3__ scaler; int fmt_flags; int offset; struct camif_dev* camif; struct camif_frame out_frame; } ;
struct camif_dev {struct camif_frame camif_crop; struct camif_frame mbus_fmt; TYPE_1__* variant; struct camif_vp* vp; } ;
struct TYPE_8__ {int depth; } ;
struct TYPE_5__ {unsigned int ip_revision; int vp_offset; } ;


 int BUG_ON (int ) ;
 void* CAMIF_DEF_HEIGHT ;
 void* CAMIF_DEF_WIDTH ;
 int CAMIF_VP_NUM ;
 int FMT_FL_S3C24XX_CODEC ;
 int FMT_FL_S3C24XX_PREVIEW ;
 int FMT_FL_S3C64XX ;
 unsigned int S3C244X_CAMIF_IP_REV ;
 int * camif_mbus_formats ;
 int memset (struct camif_frame*,int ,int) ;
 TYPE_4__* s3c_camif_find_format (struct camif_vp*,int *,int ) ;

int s3c_camif_set_defaults(struct camif_dev *camif)
{
 unsigned int ip_rev = camif->variant->ip_revision;
 int i;

 for (i = 0; i < CAMIF_VP_NUM; i++) {
  struct camif_vp *vp = &camif->vp[i];
  struct camif_frame *f = &vp->out_frame;

  vp->camif = camif;
  vp->id = i;
  vp->offset = camif->variant->vp_offset;

  if (ip_rev == S3C244X_CAMIF_IP_REV)
   vp->fmt_flags = i ? FMT_FL_S3C24XX_PREVIEW :
     FMT_FL_S3C24XX_CODEC;
  else
   vp->fmt_flags = FMT_FL_S3C64XX;

  vp->out_fmt = s3c_camif_find_format(vp, ((void*)0), 0);
  BUG_ON(vp->out_fmt == ((void*)0));

  memset(f, 0, sizeof(*f));
  f->f_width = CAMIF_DEF_WIDTH;
  f->f_height = CAMIF_DEF_HEIGHT;
  f->rect.width = CAMIF_DEF_WIDTH;
  f->rect.height = CAMIF_DEF_HEIGHT;


  vp->scaler.enable = 1;

  vp->payload = (f->f_width * f->f_height *
          vp->out_fmt->depth) / 8;
 }

 memset(&camif->mbus_fmt, 0, sizeof(camif->mbus_fmt));
 camif->mbus_fmt.width = CAMIF_DEF_WIDTH;
 camif->mbus_fmt.height = CAMIF_DEF_HEIGHT;
 camif->mbus_fmt.code = camif_mbus_formats[0];

 memset(&camif->camif_crop, 0, sizeof(camif->camif_crop));
 camif->camif_crop.width = CAMIF_DEF_WIDTH;
 camif->camif_crop.height = CAMIF_DEF_HEIGHT;

 return 0;
}
