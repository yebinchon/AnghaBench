
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ enable; } ;
struct camif_vp {int offset; int id; TYPE_2__ scaler; struct camif_dev* camif; } ;
struct camif_dev {int stream_count; TYPE_1__* variant; } ;
struct TYPE_3__ {scalar_t__ ip_revision; } ;


 int CIIMGCPT_CPT_FREN_ENABLE (int ) ;
 int CIIMGCPT_IMGCPTEN ;
 int CIIMGCPT_IMGCPTEN_SC (int ) ;
 scalar_t__ S3C6410_CAMIF_IP_REV ;
 int S3C_CAMIF_REG_CIIMGCPT (int ) ;
 int camif_read (struct camif_dev*,int ) ;
 int camif_write (struct camif_dev*,int ,int ) ;
 int pr_debug (char*,int ,int) ;

void camif_hw_enable_capture(struct camif_vp *vp)
{
 struct camif_dev *camif = vp->camif;
 u32 cfg;

 cfg = camif_read(camif, S3C_CAMIF_REG_CIIMGCPT(vp->offset));
 camif->stream_count++;

 if (camif->variant->ip_revision == S3C6410_CAMIF_IP_REV)
  cfg |= CIIMGCPT_CPT_FREN_ENABLE(vp->id);

 if (vp->scaler.enable)
  cfg |= CIIMGCPT_IMGCPTEN_SC(vp->id);

 if (camif->stream_count == 1)
  cfg |= CIIMGCPT_IMGCPTEN;

 camif_write(camif, S3C_CAMIF_REG_CIIMGCPT(vp->offset), cfg);

 pr_debug("CIIMGCPT: %#x, camif->stream_count: %d\n",
   cfg, camif->stream_count);
}
