
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tw5864_input {int nr; size_t reg_dsp_qp; size_t qp; int reg_emu; int reg_dsp; int resolution; scalar_t__ std; int width; int height; int reg_interlacing; int reg_dsp_codec; int enabled; int reg_dsp_i4x4_weight; int reg_dsp_ref_mvp_lambda; scalar_t__ h264_idr_pic_id; scalar_t__ frame_gop_seqno; scalar_t__ frame_seqno; struct tw5864_dev* root; } ;
struct tw5864_dev {int slock; TYPE_1__* pci; } ;
struct TYPE_2__ {int dev; } ;






 scalar_t__ STD_NTSC ;
 int TW5864_CIF_MAP_MD ;
 int TW5864_DI_EN ;
 int TW5864_DSP_CHROM_SW ;
 int TW5864_DSP_FRAME_TYPE_D1 ;
 int TW5864_DSP_INTER_ST ;
 int TW5864_DSP_MB_DELAY ;
 int TW5864_DSP_PIC_MAX_MB ;
 int TW5864_EMU_EN_BHOST ;
 int TW5864_EMU_EN_DDR ;
 int TW5864_EMU_EN_LPF ;
 int TW5864_EMU_EN_ME ;
 int TW5864_EMU_EN_SEN ;
 int TW5864_FRAME_BUS1 ;
 int TW5864_FRAME_BUS2 ;
 int TW5864_FRAME_HEIGHT_BUS_A (int) ;
 int TW5864_FRAME_HEIGHT_BUS_B (int) ;
 int TW5864_FRAME_WIDTH_BUS_A (int) ;
 int TW5864_FRAME_WIDTH_BUS_B (int) ;
 int TW5864_FULL_HALF_FLAG ;
 int TW5864_H264EN_CH_DNS ;
 int TW5864_H264EN_CH_FMT_REG1 ;
 int TW5864_H264EN_RATE_MAX_LINE_REG1 ;
 int TW5864_H264EN_RATE_MAX_LINE_REG2 ;
 int TW5864_HD1_MAP_MD ;
 int TW5864_INDIR_CROP_ETC ;
 int TW5864_INDIR_CROP_ETC_CROP_EN ;
 int TW5864_INDIR_IN_PIC_HEIGHT (int) ;
 int TW5864_INDIR_IN_PIC_WIDTH (int) ;
 int TW5864_INDIR_OUT_PIC_HEIGHT (int) ;
 int TW5864_INDIR_OUT_PIC_WIDTH (int) ;
 int dev_dbg (int *,char*,int) ;
 int * intra4x4_lambda3 ;
 int * lambda_lookup_table ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tw5864_frame_interval_set (struct tw5864_input*) ;
 int tw_clearl (int ,int) ;
 int tw_indir_readb (int ) ;
 int tw_indir_writeb (int ,int) ;
 int tw_mask_shift_writel (int ,int,int,int) ;
 int tw_setl (int ,int) ;
 int tw_writel (int ,int) ;

__attribute__((used)) static int tw5864_enable_input(struct tw5864_input *input)
{
 struct tw5864_dev *dev = input->root;
 int nr = input->nr;
 unsigned long flags;
 int d1_width = 720;
 int d1_height;
 int frame_width_bus_value = 0;
 int frame_height_bus_value = 0;
 int reg_frame_bus = 0x1c;
 int fmt_reg_value = 0;
 int downscale_enabled = 0;

 dev_dbg(&dev->pci->dev, "Enabling channel %d\n", nr);

 input->frame_seqno = 0;
 input->frame_gop_seqno = 0;
 input->h264_idr_pic_id = 0;

 input->reg_dsp_qp = input->qp;
 input->reg_dsp_ref_mvp_lambda = lambda_lookup_table[input->qp];
 input->reg_dsp_i4x4_weight = intra4x4_lambda3[input->qp];
 input->reg_emu = TW5864_EMU_EN_LPF | TW5864_EMU_EN_BHOST
  | TW5864_EMU_EN_SEN | TW5864_EMU_EN_ME | TW5864_EMU_EN_DDR;
 input->reg_dsp = nr
  | TW5864_DSP_CHROM_SW
  | ((0xa << 8) & TW5864_DSP_MB_DELAY)
  ;

 input->resolution = 130;

 d1_height = (input->std == STD_NTSC) ? 480 : 576;

 input->width = d1_width;
 input->height = d1_height;

 input->reg_interlacing = 0x4;

 switch (input->resolution) {
 case 130:
  frame_width_bus_value = 0x2cf;
  frame_height_bus_value = input->height - 1;
  reg_frame_bus = 0x1c;
  fmt_reg_value = 0;
  downscale_enabled = 0;
  input->reg_dsp_codec |= TW5864_CIF_MAP_MD | TW5864_HD1_MAP_MD;
  input->reg_emu |= TW5864_DSP_FRAME_TYPE_D1;
  input->reg_interlacing = TW5864_DI_EN | TW5864_DSP_INTER_ST;

  tw_setl(TW5864_FULL_HALF_FLAG, 1 << nr);
  break;
 case 129:
  input->height /= 2;
  input->width /= 2;
  frame_width_bus_value = 0x2cf;
  frame_height_bus_value = input->height * 2 - 1;
  reg_frame_bus = 0x1c;
  fmt_reg_value = 0;
  downscale_enabled = 0;
  input->reg_dsp_codec |= TW5864_HD1_MAP_MD;
  input->reg_emu |= TW5864_DSP_FRAME_TYPE_D1;

  tw_clearl(TW5864_FULL_HALF_FLAG, 1 << nr);

  break;
 case 131:
  input->height /= 4;
  input->width /= 2;
  frame_width_bus_value = 0x15f;
  frame_height_bus_value = input->height * 2 - 1;
  reg_frame_bus = 0x07;
  fmt_reg_value = 1;
  downscale_enabled = 1;
  input->reg_dsp_codec |= TW5864_CIF_MAP_MD;

  tw_clearl(TW5864_FULL_HALF_FLAG, 1 << nr);
  break;
 case 128:
  input->height /= 4;
  input->width /= 4;
  frame_width_bus_value = 0x15f;
  frame_height_bus_value = input->height * 2 - 1;
  reg_frame_bus = 0x07;
  fmt_reg_value = 1;
  downscale_enabled = 1;
  input->reg_dsp_codec |= TW5864_CIF_MAP_MD;

  tw_clearl(TW5864_FULL_HALF_FLAG, 1 << nr);
  break;
 }


 tw_indir_writeb(TW5864_INDIR_IN_PIC_WIDTH(nr), d1_width / 4);
 tw_indir_writeb(TW5864_INDIR_IN_PIC_HEIGHT(nr), d1_height / 4);


 tw_indir_writeb(TW5864_INDIR_OUT_PIC_WIDTH(nr), input->width / 4);
 tw_indir_writeb(TW5864_INDIR_OUT_PIC_HEIGHT(nr), input->height / 4);





 input->width = 704;
 tw_indir_writeb(TW5864_INDIR_CROP_ETC,
   tw_indir_readb(TW5864_INDIR_CROP_ETC) |
   TW5864_INDIR_CROP_ETC_CROP_EN);

 tw_writel(TW5864_DSP_PIC_MAX_MB,
    ((input->width / 16) << 8) | (input->height / 16));

 tw_writel(TW5864_FRAME_WIDTH_BUS_A(nr),
    frame_width_bus_value);
 tw_writel(TW5864_FRAME_WIDTH_BUS_B(nr),
    frame_width_bus_value);
 tw_writel(TW5864_FRAME_HEIGHT_BUS_A(nr),
    frame_height_bus_value);
 tw_writel(TW5864_FRAME_HEIGHT_BUS_B(nr),
    (frame_height_bus_value + 1) / 2 - 1);

 tw5864_frame_interval_set(input);

 if (downscale_enabled)
  tw_setl(TW5864_H264EN_CH_DNS, 1 << nr);

 tw_mask_shift_writel(TW5864_H264EN_CH_FMT_REG1, 0x3, 2 * nr,
        fmt_reg_value);

 tw_mask_shift_writel((nr < 2
         ? TW5864_H264EN_RATE_MAX_LINE_REG1
         : TW5864_H264EN_RATE_MAX_LINE_REG2),
        0x1f, 5 * (nr % 2),
        input->std == STD_NTSC ? 29 : 24);

 tw_mask_shift_writel((nr < 2) ? TW5864_FRAME_BUS1 :
        TW5864_FRAME_BUS2, 0xff, (nr % 2) * 8,
        reg_frame_bus);

 spin_lock_irqsave(&dev->slock, flags);
 input->enabled = 1;
 spin_unlock_irqrestore(&dev->slock, flags);

 return 0;
}
