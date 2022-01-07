
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct TYPE_14__ {int fourcc; int dctrl_dview; TYPE_4__* sd_format; } ;
struct TYPE_8__ {int sizeimage; int height; int width; } ;
struct TYPE_9__ {TYPE_1__ pix; } ;
struct TYPE_10__ {TYPE_2__ fmt; } ;
struct isc_device {int awb_lock; TYPE_7__ config; TYPE_6__* cur_frm; TYPE_3__ fmt; struct regmap* regmap; } ;
typedef int dma_addr_t ;
struct TYPE_12__ {int vb2_buf; } ;
struct TYPE_13__ {TYPE_5__ vb; } ;
struct TYPE_11__ {int mbus_code; } ;


 int ISC_CTRLEN ;
 int ISC_CTRL_CAPTURE ;
 int ISC_DAD0 ;
 int ISC_DAD1 ;
 int ISC_DAD2 ;
 int ISC_DCTRL ;
 int ISC_DCTRL_IE_IS ;
 int ISC_IS_FORMAT_RAW (int ) ;
 int ISC_PFE_CFG0 ;
 int ISC_PFE_CFG0_COLEN ;
 int ISC_PFE_CFG0_ROWEN ;
 int ISC_PFE_CFG1 ;
 int ISC_PFE_CFG1_COLMAX (int) ;
 int ISC_PFE_CFG1_COLMAX_MASK ;
 int ISC_PFE_CFG1_COLMIN (int ) ;
 int ISC_PFE_CFG1_COLMIN_MASK ;
 int ISC_PFE_CFG2 ;
 int ISC_PFE_CFG2_ROWMAX (int) ;
 int ISC_PFE_CFG2_ROWMAX_MASK ;
 int ISC_PFE_CFG2_ROWMIN (int ) ;
 int ISC_PFE_CFG2_ROWMIN_MASK ;


 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int regmap_write (struct regmap*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vb2_dma_contig_plane_dma_addr (int *,int ) ;

__attribute__((used)) static void isc_start_dma(struct isc_device *isc)
{
 struct regmap *regmap = isc->regmap;
 u32 sizeimage = isc->fmt.fmt.pix.sizeimage;
 u32 dctrl_dview;
 dma_addr_t addr0;
 u32 h, w;

 h = isc->fmt.fmt.pix.height;
 w = isc->fmt.fmt.pix.width;







 if (!ISC_IS_FORMAT_RAW(isc->config.sd_format->mbus_code)) {
  h <<= 1;
  w <<= 1;
 }
 regmap_write(regmap, ISC_PFE_CFG1,
       (ISC_PFE_CFG1_COLMIN(0) & ISC_PFE_CFG1_COLMIN_MASK) |
       (ISC_PFE_CFG1_COLMAX(w - 1) & ISC_PFE_CFG1_COLMAX_MASK));

 regmap_write(regmap, ISC_PFE_CFG2,
       (ISC_PFE_CFG2_ROWMIN(0) & ISC_PFE_CFG2_ROWMIN_MASK) |
       (ISC_PFE_CFG2_ROWMAX(h - 1) & ISC_PFE_CFG2_ROWMAX_MASK));

 regmap_update_bits(regmap, ISC_PFE_CFG0,
      ISC_PFE_CFG0_COLEN | ISC_PFE_CFG0_ROWEN,
      ISC_PFE_CFG0_COLEN | ISC_PFE_CFG0_ROWEN);

 addr0 = vb2_dma_contig_plane_dma_addr(&isc->cur_frm->vb.vb2_buf, 0);
 regmap_write(regmap, ISC_DAD0, addr0);

 switch (isc->config.fourcc) {
 case 129:
  regmap_write(regmap, ISC_DAD1, addr0 + (sizeimage * 2) / 3);
  regmap_write(regmap, ISC_DAD2, addr0 + (sizeimage * 5) / 6);
  break;
 case 128:
  regmap_write(regmap, ISC_DAD1, addr0 + sizeimage / 2);
  regmap_write(regmap, ISC_DAD2, addr0 + (sizeimage * 3) / 4);
  break;
 default:
  break;
 }

 dctrl_dview = isc->config.dctrl_dview;

 regmap_write(regmap, ISC_DCTRL, dctrl_dview | ISC_DCTRL_IE_IS);
 spin_lock(&isc->awb_lock);
 regmap_write(regmap, ISC_CTRLEN, ISC_CTRL_CAPTURE);
 spin_unlock(&isc->awb_lock);
}
