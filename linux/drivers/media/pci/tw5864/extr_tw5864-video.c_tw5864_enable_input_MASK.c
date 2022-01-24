#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tw5864_input {int nr; size_t reg_dsp_qp; size_t qp; int reg_emu; int reg_dsp; int resolution; scalar_t__ std; int width; int height; int reg_interlacing; int reg_dsp_codec; int enabled; int /*<<< orphan*/  reg_dsp_i4x4_weight; int /*<<< orphan*/  reg_dsp_ref_mvp_lambda; scalar_t__ h264_idr_pic_id; scalar_t__ frame_gop_seqno; scalar_t__ frame_seqno; struct tw5864_dev* root; } ;
struct tw5864_dev {int /*<<< orphan*/  slock; TYPE_1__* pci; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  CIF 131 
#define  D1 130 
#define  HD1 129 
#define  QCIF 128 
 scalar_t__ STD_NTSC ; 
 int TW5864_CIF_MAP_MD ; 
 int TW5864_DI_EN ; 
 int TW5864_DSP_CHROM_SW ; 
 int TW5864_DSP_FRAME_TYPE_D1 ; 
 int TW5864_DSP_INTER_ST ; 
 int TW5864_DSP_MB_DELAY ; 
 int /*<<< orphan*/  TW5864_DSP_PIC_MAX_MB ; 
 int TW5864_EMU_EN_BHOST ; 
 int TW5864_EMU_EN_DDR ; 
 int TW5864_EMU_EN_LPF ; 
 int TW5864_EMU_EN_ME ; 
 int TW5864_EMU_EN_SEN ; 
 int /*<<< orphan*/  TW5864_FRAME_BUS1 ; 
 int /*<<< orphan*/  TW5864_FRAME_BUS2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  TW5864_FULL_HALF_FLAG ; 
 int /*<<< orphan*/  TW5864_H264EN_CH_DNS ; 
 int /*<<< orphan*/  TW5864_H264EN_CH_FMT_REG1 ; 
 int /*<<< orphan*/  TW5864_H264EN_RATE_MAX_LINE_REG1 ; 
 int /*<<< orphan*/  TW5864_H264EN_RATE_MAX_LINE_REG2 ; 
 int TW5864_HD1_MAP_MD ; 
 int /*<<< orphan*/  TW5864_INDIR_CROP_ETC ; 
 int TW5864_INDIR_CROP_ETC_CROP_EN ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * intra4x4_lambda3 ; 
 int /*<<< orphan*/ * lambda_lookup_table ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct tw5864_input*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC18(struct tw5864_input *input)
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

	FUNC8(&dev->pci->dev, "Enabling channel %d\n", nr);

	input->frame_seqno = 0;
	input->frame_gop_seqno = 0;
	input->h264_idr_pic_id = 0;

	input->reg_dsp_qp = input->qp;
	input->reg_dsp_ref_mvp_lambda = lambda_lookup_table[input->qp];
	input->reg_dsp_i4x4_weight = intra4x4_lambda3[input->qp];
	input->reg_emu = TW5864_EMU_EN_LPF | TW5864_EMU_EN_BHOST
		| TW5864_EMU_EN_SEN | TW5864_EMU_EN_ME | TW5864_EMU_EN_DDR;
	input->reg_dsp = nr /* channel id */
		| TW5864_DSP_CHROM_SW
		| ((0xa << 8) & TW5864_DSP_MB_DELAY)
		;

	input->resolution = D1;

	d1_height = (input->std == STD_NTSC) ? 480 : 576;

	input->width = d1_width;
	input->height = d1_height;

	input->reg_interlacing = 0x4;

	switch (input->resolution) {
	case D1:
		frame_width_bus_value = 0x2cf;
		frame_height_bus_value = input->height - 1;
		reg_frame_bus = 0x1c;
		fmt_reg_value = 0;
		downscale_enabled = 0;
		input->reg_dsp_codec |= TW5864_CIF_MAP_MD | TW5864_HD1_MAP_MD;
		input->reg_emu |= TW5864_DSP_FRAME_TYPE_D1;
		input->reg_interlacing = TW5864_DI_EN | TW5864_DSP_INTER_ST;

		FUNC16(TW5864_FULL_HALF_FLAG, 1 << nr);
		break;
	case HD1:
		input->height /= 2;
		input->width /= 2;
		frame_width_bus_value = 0x2cf;
		frame_height_bus_value = input->height * 2 - 1;
		reg_frame_bus = 0x1c;
		fmt_reg_value = 0;
		downscale_enabled = 0;
		input->reg_dsp_codec |= TW5864_HD1_MAP_MD;
		input->reg_emu |= TW5864_DSP_FRAME_TYPE_D1;

		FUNC12(TW5864_FULL_HALF_FLAG, 1 << nr);

		break;
	case CIF:
		input->height /= 4;
		input->width /= 2;
		frame_width_bus_value = 0x15f;
		frame_height_bus_value = input->height * 2 - 1;
		reg_frame_bus = 0x07;
		fmt_reg_value = 1;
		downscale_enabled = 1;
		input->reg_dsp_codec |= TW5864_CIF_MAP_MD;

		FUNC12(TW5864_FULL_HALF_FLAG, 1 << nr);
		break;
	case QCIF:
		input->height /= 4;
		input->width /= 4;
		frame_width_bus_value = 0x15f;
		frame_height_bus_value = input->height * 2 - 1;
		reg_frame_bus = 0x07;
		fmt_reg_value = 1;
		downscale_enabled = 1;
		input->reg_dsp_codec |= TW5864_CIF_MAP_MD;

		FUNC12(TW5864_FULL_HALF_FLAG, 1 << nr);
		break;
	}

	/* analog input width / 4 */
	FUNC14(FUNC5(nr), d1_width / 4);
	FUNC14(FUNC4(nr), d1_height / 4);

	/* output width / 4 */
	FUNC14(FUNC7(nr), input->width / 4);
	FUNC14(FUNC6(nr), input->height / 4);

	/*
	 * Crop width from 720 to 704.
	 * Above register settings need value 720 involved.
	 */
	input->width = 704;
	FUNC14(TW5864_INDIR_CROP_ETC,
			FUNC13(TW5864_INDIR_CROP_ETC) |
			TW5864_INDIR_CROP_ETC_CROP_EN);

	FUNC17(TW5864_DSP_PIC_MAX_MB,
		  ((input->width / 16) << 8) | (input->height / 16));

	FUNC17(FUNC2(nr),
		  frame_width_bus_value);
	FUNC17(FUNC3(nr),
		  frame_width_bus_value);
	FUNC17(FUNC0(nr),
		  frame_height_bus_value);
	FUNC17(FUNC1(nr),
		  (frame_height_bus_value + 1) / 2 - 1);

	FUNC11(input);

	if (downscale_enabled)
		FUNC16(TW5864_H264EN_CH_DNS, 1 << nr);

	FUNC15(TW5864_H264EN_CH_FMT_REG1, 0x3, 2 * nr,
			     fmt_reg_value);

	FUNC15((nr < 2
			      ? TW5864_H264EN_RATE_MAX_LINE_REG1
			      : TW5864_H264EN_RATE_MAX_LINE_REG2),
			     0x1f, 5 * (nr % 2),
			     input->std == STD_NTSC ? 29 : 24);

	FUNC15((nr < 2) ? TW5864_FRAME_BUS1 :
			     TW5864_FRAME_BUS2, 0xff, (nr % 2) * 8,
			     reg_frame_bus);

	FUNC9(&dev->slock, flags);
	input->enabled = 1;
	FUNC10(&dev->slock, flags);

	return 0;
}