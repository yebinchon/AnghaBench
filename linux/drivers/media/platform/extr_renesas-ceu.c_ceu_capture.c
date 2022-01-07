
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_pix_format_mplane {int dummy; } ;
struct ceu_device {TYPE_1__* active; struct v4l2_pix_format_mplane v4l2_pix; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int vb2_buf; } ;


 int CEU_CAPSR ;
 int CEU_CAPSR_CE ;
 int CEU_CDACR ;
 int CEU_CDAYR ;
 scalar_t__ ceu_fmt_mplane (struct v4l2_pix_format_mplane*) ;
 int ceu_write (struct ceu_device*,int ,int ) ;
 int vb2_dma_contig_plane_dma_addr (int *,int) ;

__attribute__((used)) static int ceu_capture(struct ceu_device *ceudev)
{
 struct v4l2_pix_format_mplane *pix = &ceudev->v4l2_pix;
 dma_addr_t phys_addr_top;

 phys_addr_top =
  vb2_dma_contig_plane_dma_addr(&ceudev->active->vb2_buf, 0);
 ceu_write(ceudev, CEU_CDAYR, phys_addr_top);


 if (ceu_fmt_mplane(pix)) {
  phys_addr_top =
   vb2_dma_contig_plane_dma_addr(&ceudev->active->vb2_buf,
            1);
  ceu_write(ceudev, CEU_CDACR, phys_addr_top);
 }





 ceu_write(ceudev, CEU_CAPSR, CEU_CAPSR_CE);

 return 0;
}
