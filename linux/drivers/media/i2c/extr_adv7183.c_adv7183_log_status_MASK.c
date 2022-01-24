#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct v4l2_subdev {int /*<<< orphan*/  name; } ;
struct adv7183 {int /*<<< orphan*/  hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV7183_ADC_CTRL ; 
 int /*<<< orphan*/  ADV7183_ADI_CTRL ; 
 int /*<<< orphan*/  ADV7183_ADI_CTRL_2 ; 
 int /*<<< orphan*/  ADV7183_AGC_MODE_CTRL ; 
 int /*<<< orphan*/  ADV7183_ANAL_CLAMP_CTRL ; 
 int /*<<< orphan*/  ADV7183_AUTO_DET_EN ; 
 int /*<<< orphan*/  ADV7183_BRIGHTNESS ; 
 int /*<<< orphan*/  ADV7183_CHRO_GAIN_CTRL_1 ; 
 int /*<<< orphan*/  ADV7183_CHRO_GAIN_CTRL_2 ; 
 int /*<<< orphan*/  ADV7183_COMB_FILT_CTRL ; 
 int /*<<< orphan*/  ADV7183_CONTRAST ; 
 int /*<<< orphan*/  ADV7183_DEF_C ; 
 int /*<<< orphan*/  ADV7183_DEF_Y ; 
 int /*<<< orphan*/  ADV7183_DIGI_CLAMP_CTRL_1 ; 
 int /*<<< orphan*/  ADV7183_DRIVE_STR ; 
 int /*<<< orphan*/  ADV7183_EXT_OUT_CTRL ; 
 int /*<<< orphan*/  ADV7183_HS_POS_CTRL_1 ; 
 int /*<<< orphan*/  ADV7183_HS_POS_CTRL_2 ; 
 int /*<<< orphan*/  ADV7183_HS_POS_CTRL_3 ; 
 int /*<<< orphan*/  ADV7183_HUE ; 
 int /*<<< orphan*/  ADV7183_IDENT ; 
 int /*<<< orphan*/  ADV7183_IN_CTRL ; 
 int /*<<< orphan*/  ADV7183_LUMA_GAIN_CTRL_1 ; 
 int /*<<< orphan*/  ADV7183_LUMA_GAIN_CTRL_2 ; 
 int /*<<< orphan*/  ADV7183_MISC_GAIN_CTRL ; 
 int /*<<< orphan*/  ADV7183_OUT_CTRL ; 
 int /*<<< orphan*/  ADV7183_PIX_DELAY_CTRL ; 
 int /*<<< orphan*/  ADV7183_POLARITY ; 
 int /*<<< orphan*/  ADV7183_POW_MANAGE ; 
 int /*<<< orphan*/  ADV7183_SD_OFFSET_CB ; 
 int /*<<< orphan*/  ADV7183_SD_OFFSET_CR ; 
 int /*<<< orphan*/  ADV7183_SD_SATURATION_CB ; 
 int /*<<< orphan*/  ADV7183_SD_SATURATION_CR ; 
 int /*<<< orphan*/  ADV7183_SHAP_FILT_CTRL ; 
 int /*<<< orphan*/  ADV7183_SHAP_FILT_CTRL_2 ; 
 int /*<<< orphan*/  ADV7183_STATUS_1 ; 
 int /*<<< orphan*/  ADV7183_STATUS_2 ; 
 int /*<<< orphan*/  ADV7183_STATUS_3 ; 
 int /*<<< orphan*/  ADV7183_VD_SEL ; 
 int /*<<< orphan*/  ADV7183_VS_FIELD_CTRL_1 ; 
 int /*<<< orphan*/  ADV7183_VS_FIELD_CTRL_2 ; 
 int /*<<< orphan*/  ADV7183_VS_FIELD_CTRL_3 ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 struct adv7183* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd)
{
	struct adv7183 *decoder = FUNC1(sd);

	FUNC3(sd, "adv7183: Input control = 0x%02x\n",
			FUNC0(sd, ADV7183_IN_CTRL));
	FUNC3(sd, "adv7183: Video selection = 0x%02x\n",
			FUNC0(sd, ADV7183_VD_SEL));
	FUNC3(sd, "adv7183: Output control = 0x%02x\n",
			FUNC0(sd, ADV7183_OUT_CTRL));
	FUNC3(sd, "adv7183: Extended output control = 0x%02x\n",
			FUNC0(sd, ADV7183_EXT_OUT_CTRL));
	FUNC3(sd, "adv7183: Autodetect enable = 0x%02x\n",
			FUNC0(sd, ADV7183_AUTO_DET_EN));
	FUNC3(sd, "adv7183: Contrast = 0x%02x\n",
			FUNC0(sd, ADV7183_CONTRAST));
	FUNC3(sd, "adv7183: Brightness = 0x%02x\n",
			FUNC0(sd, ADV7183_BRIGHTNESS));
	FUNC3(sd, "adv7183: Hue = 0x%02x\n",
			FUNC0(sd, ADV7183_HUE));
	FUNC3(sd, "adv7183: Default value Y = 0x%02x\n",
			FUNC0(sd, ADV7183_DEF_Y));
	FUNC3(sd, "adv7183: Default value C = 0x%02x\n",
			FUNC0(sd, ADV7183_DEF_C));
	FUNC3(sd, "adv7183: ADI control = 0x%02x\n",
			FUNC0(sd, ADV7183_ADI_CTRL));
	FUNC3(sd, "adv7183: Power Management = 0x%02x\n",
			FUNC0(sd, ADV7183_POW_MANAGE));
	FUNC3(sd, "adv7183: Status 1 2 and 3 = 0x%02x 0x%02x 0x%02x\n",
			FUNC0(sd, ADV7183_STATUS_1),
			FUNC0(sd, ADV7183_STATUS_2),
			FUNC0(sd, ADV7183_STATUS_3));
	FUNC3(sd, "adv7183: Ident = 0x%02x\n",
			FUNC0(sd, ADV7183_IDENT));
	FUNC3(sd, "adv7183: Analog clamp control = 0x%02x\n",
			FUNC0(sd, ADV7183_ANAL_CLAMP_CTRL));
	FUNC3(sd, "adv7183: Digital clamp control 1 = 0x%02x\n",
			FUNC0(sd, ADV7183_DIGI_CLAMP_CTRL_1));
	FUNC3(sd, "adv7183: Shaping filter control 1 and 2 = 0x%02x 0x%02x\n",
			FUNC0(sd, ADV7183_SHAP_FILT_CTRL),
			FUNC0(sd, ADV7183_SHAP_FILT_CTRL_2));
	FUNC3(sd, "adv7183: Comb filter control = 0x%02x\n",
			FUNC0(sd, ADV7183_COMB_FILT_CTRL));
	FUNC3(sd, "adv7183: ADI control 2 = 0x%02x\n",
			FUNC0(sd, ADV7183_ADI_CTRL_2));
	FUNC3(sd, "adv7183: Pixel delay control = 0x%02x\n",
			FUNC0(sd, ADV7183_PIX_DELAY_CTRL));
	FUNC3(sd, "adv7183: Misc gain control = 0x%02x\n",
			FUNC0(sd, ADV7183_MISC_GAIN_CTRL));
	FUNC3(sd, "adv7183: AGC mode control = 0x%02x\n",
			FUNC0(sd, ADV7183_AGC_MODE_CTRL));
	FUNC3(sd, "adv7183: Chroma gain control 1 and 2 = 0x%02x 0x%02x\n",
			FUNC0(sd, ADV7183_CHRO_GAIN_CTRL_1),
			FUNC0(sd, ADV7183_CHRO_GAIN_CTRL_2));
	FUNC3(sd, "adv7183: Luma gain control 1 and 2 = 0x%02x 0x%02x\n",
			FUNC0(sd, ADV7183_LUMA_GAIN_CTRL_1),
			FUNC0(sd, ADV7183_LUMA_GAIN_CTRL_2));
	FUNC3(sd, "adv7183: Vsync field control 1 2 and 3 = 0x%02x 0x%02x 0x%02x\n",
			FUNC0(sd, ADV7183_VS_FIELD_CTRL_1),
			FUNC0(sd, ADV7183_VS_FIELD_CTRL_2),
			FUNC0(sd, ADV7183_VS_FIELD_CTRL_3));
	FUNC3(sd, "adv7183: Hsync position control 1 2 and 3 = 0x%02x 0x%02x 0x%02x\n",
			FUNC0(sd, ADV7183_HS_POS_CTRL_1),
			FUNC0(sd, ADV7183_HS_POS_CTRL_2),
			FUNC0(sd, ADV7183_HS_POS_CTRL_3));
	FUNC3(sd, "adv7183: Polarity = 0x%02x\n",
			FUNC0(sd, ADV7183_POLARITY));
	FUNC3(sd, "adv7183: ADC control = 0x%02x\n",
			FUNC0(sd, ADV7183_ADC_CTRL));
	FUNC3(sd, "adv7183: SD offset Cb and Cr = 0x%02x 0x%02x\n",
			FUNC0(sd, ADV7183_SD_OFFSET_CB),
			FUNC0(sd, ADV7183_SD_OFFSET_CR));
	FUNC3(sd, "adv7183: SD saturation Cb and Cr = 0x%02x 0x%02x\n",
			FUNC0(sd, ADV7183_SD_SATURATION_CB),
			FUNC0(sd, ADV7183_SD_SATURATION_CR));
	FUNC3(sd, "adv7183: Drive strength = 0x%02x\n",
			FUNC0(sd, ADV7183_DRIVE_STR));
	FUNC2(&decoder->hdl, sd->name);
	return 0;
}