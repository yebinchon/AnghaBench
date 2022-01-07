
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int width; } ;
struct camif_dma_offset {int line; int initial; } ;
struct camif_frame {TYPE_2__ rect; struct camif_dma_offset dma_offset; } ;
struct camif_vp {int offset; int id; struct camif_fmt* out_fmt; struct camif_frame out_frame; struct camif_dev* camif; } ;
struct camif_fmt {int ybpp; } ;
struct camif_dev {TYPE_1__* variant; } ;
struct TYPE_3__ {scalar_t__ ip_revision; } ;


 int CICTRL_BURST_MASK ;
 int CICTRL_CBURST1 (unsigned int) ;
 int CICTRL_CBURST2 (unsigned int) ;
 int CICTRL_YBURST1 (unsigned int) ;
 int CICTRL_YBURST2 (unsigned int) ;
 scalar_t__ S3C6410_CAMIF_IP_REV ;
 int S3C_CAMIF_REG_CICTRL (int ,int ) ;
 int S3C_CAMIF_REG_CISSCB (int ) ;
 int S3C_CAMIF_REG_CISSCR (int ) ;
 int S3C_CAMIF_REG_CISSY (int ) ;
 int S3C_CISS_OFFS_INITIAL (int ) ;
 int S3C_CISS_OFFS_LINE (int ) ;
 int camif_get_dma_burst (int ,int ,unsigned int*,unsigned int*) ;
 int camif_hw_set_out_dma_size (struct camif_vp*) ;
 int camif_read (struct camif_dev*,int ) ;
 int camif_write (struct camif_dev*,int ,int) ;
 int pr_debug (char*,unsigned int,unsigned int) ;

void camif_hw_set_output_dma(struct camif_vp *vp)
{
 struct camif_dev *camif = vp->camif;
 struct camif_frame *frame = &vp->out_frame;
 const struct camif_fmt *fmt = vp->out_fmt;
 unsigned int ymburst = 0, yrburst = 0;
 u32 cfg;

 camif_hw_set_out_dma_size(vp);

 if (camif->variant->ip_revision == S3C6410_CAMIF_IP_REV) {
  struct camif_dma_offset *offset = &frame->dma_offset;

  cfg = S3C_CISS_OFFS_INITIAL(offset->initial);
  cfg |= S3C_CISS_OFFS_LINE(offset->line);
  camif_write(camif, S3C_CAMIF_REG_CISSY(vp->id), cfg);
  camif_write(camif, S3C_CAMIF_REG_CISSCB(vp->id), cfg);
  camif_write(camif, S3C_CAMIF_REG_CISSCR(vp->id), cfg);
 }


 camif_get_dma_burst(frame->rect.width, fmt->ybpp, &ymburst, &yrburst);

 cfg = camif_read(camif, S3C_CAMIF_REG_CICTRL(vp->id, vp->offset));
 cfg &= ~CICTRL_BURST_MASK;

 cfg |= CICTRL_YBURST1(ymburst) | CICTRL_YBURST2(yrburst);
 cfg |= CICTRL_CBURST1(ymburst / 2) | CICTRL_CBURST2(yrburst / 2);

 camif_write(camif, S3C_CAMIF_REG_CICTRL(vp->id, vp->offset), cfg);

 pr_debug("ymburst: %u, yrburst: %u\n", ymburst, yrburst);
}
