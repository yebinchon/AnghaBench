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
typedef  int u8 ;
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int code; int width; int height; } ;
struct csid_testgen_config {int payload_mode; scalar_t__ enabled; } ;
struct csid_phy_config {int lane_cnt; int lane_assign; int csiphy_id; } ;
struct csid_format {int bpp; int spp; int data_type; int decode_format; } ;
struct csid_device {scalar_t__ base; struct v4l2_mbus_framefmt* fmt; TYPE_1__* camss; struct csid_phy_config phy; int /*<<< orphan*/  nformats; int /*<<< orphan*/  formats; int /*<<< orphan*/ * pads; int /*<<< orphan*/  ctrls; struct csid_testgen_config testgen; } ;
typedef  enum camss_version { ____Placeholder_camss_version } camss_version ;
struct TYPE_2__ {int version; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CAMSS_8x96 ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int CAMSS_CSID_CID_n_CFG_DECODE_FORMAT_SHIFT ; 
 int CAMSS_CSID_CID_n_CFG_ISPIF_EN ; 
 int CAMSS_CSID_CID_n_CFG_PLAIN_ALIGNMENT_LSB ; 
 int CAMSS_CSID_CID_n_CFG_PLAIN_FORMAT_16 ; 
 int CAMSS_CSID_CID_n_CFG_RDI_EN ; 
 int CAMSS_CSID_CID_n_CFG_RDI_MODE_PLAIN_PACKING ; 
 int CAMSS_CSID_CID_n_CFG_RDI_MODE_RAW_DUMP ; 
 scalar_t__ CAMSS_CSID_CORE_CTRL_0 ; 
 scalar_t__ CAMSS_CSID_CORE_CTRL_1 ; 
 scalar_t__ FUNC2 (int) ; 
 int CAMSS_CSID_TG_CTRL_DISABLE ; 
 int CAMSS_CSID_TG_CTRL_ENABLE ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int CAMSS_CSID_TG_VC_CFG_H_BLANKING ; 
 int CAMSS_CSID_TG_VC_CFG_V_BLANKING ; 
 int ENOLINK ; 
 int MEDIA_BUS_FMT_SBGGR10_1X10 ; 
 int MEDIA_BUS_FMT_SBGGR10_2X8_PADHI_LE ; 
 int MEDIA_BUS_FMT_Y10_1X10 ; 
 int MEDIA_BUS_FMT_Y10_2X8_PADHI_LE ; 
 size_t MSM_CSID_PAD_SINK ; 
 size_t MSM_CSID_PAD_SRC ; 
 struct csid_format* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 struct csid_device* FUNC12 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct v4l2_subdev *sd, int enable)
{
	struct csid_device *csid = FUNC12(sd);
	struct csid_testgen_config *tg = &csid->testgen;
	enum camss_version ver = csid->camss->version;
	u32 val;

	if (enable) {
		u8 vc = 0; /* Virtual Channel 0 */
		u8 cid = vc * 4; /* id of Virtual Channel and Data Type set */
		u8 dt, dt_shift, df;
		int ret;

		ret = FUNC11(&csid->ctrls);
		if (ret < 0) {
			FUNC8(csid->camss->dev,
				"could not sync v4l2 controls: %d\n", ret);
			return ret;
		}

		if (!tg->enabled &&
		    !FUNC9(&csid->pads[MSM_CSID_PAD_SINK]))
			return -ENOLINK;

		if (tg->enabled) {
			/* Config Test Generator */
			struct v4l2_mbus_framefmt *f =
					&csid->fmt[MSM_CSID_PAD_SRC];
			const struct csid_format *format = FUNC7(
					csid->formats, csid->nformats, f->code);
			u32 num_bytes_per_line =
				f->width * format->bpp * format->spp / 8;
			u32 num_lines = f->height;

			/* 31:24 V blank, 23:13 H blank, 3:2 num of active DT */
			/* 1:0 VC */
			val = ((CAMSS_CSID_TG_VC_CFG_V_BLANKING & 0xff) << 24) |
			      ((CAMSS_CSID_TG_VC_CFG_H_BLANKING & 0x7ff) << 13);
			FUNC13(val, csid->base +
				       FUNC6(ver));

			/* 28:16 bytes per lines, 12:0 num of lines */
			val = ((num_bytes_per_line & 0x1fff) << 16) |
			      (num_lines & 0x1fff);
			FUNC13(val, csid->base +
				       FUNC3(ver, 0));

			dt = format->data_type;

			/* 5:0 data type */
			val = dt;
			FUNC13(val, csid->base +
				       FUNC4(ver, 0));

			/* 2:0 output test pattern */
			val = tg->payload_mode;
			FUNC13(val, csid->base +
				       FUNC5(ver, 0));

			df = format->decode_format;
		} else {
			struct v4l2_mbus_framefmt *f =
					&csid->fmt[MSM_CSID_PAD_SINK];
			const struct csid_format *format = FUNC7(
					csid->formats, csid->nformats, f->code);
			struct csid_phy_config *phy = &csid->phy;

			val = phy->lane_cnt - 1;
			val |= phy->lane_assign << 4;

			FUNC13(val,
				       csid->base + CAMSS_CSID_CORE_CTRL_0);

			val = phy->csiphy_id << 17;
			val |= 0x9;

			FUNC13(val,
				       csid->base + CAMSS_CSID_CORE_CTRL_1);

			dt = format->data_type;
			df = format->decode_format;
		}

		/* Config LUT */

		dt_shift = (cid % 4) * 8;

		val = FUNC10(csid->base +
				    FUNC0(ver, vc));
		val &= ~(0xff << dt_shift);
		val |= dt << dt_shift;
		FUNC13(val, csid->base +
			       FUNC0(ver, vc));

		val = CAMSS_CSID_CID_n_CFG_ISPIF_EN;
		val |= CAMSS_CSID_CID_n_CFG_RDI_EN;
		val |= df << CAMSS_CSID_CID_n_CFG_DECODE_FORMAT_SHIFT;
		val |= CAMSS_CSID_CID_n_CFG_RDI_MODE_RAW_DUMP;

		if (csid->camss->version == CAMSS_8x96) {
			u32 sink_code = csid->fmt[MSM_CSID_PAD_SINK].code;
			u32 src_code = csid->fmt[MSM_CSID_PAD_SRC].code;

			if ((sink_code == MEDIA_BUS_FMT_SBGGR10_1X10 &&
			     src_code == MEDIA_BUS_FMT_SBGGR10_2X8_PADHI_LE) ||
			    (sink_code == MEDIA_BUS_FMT_Y10_1X10 &&
			     src_code == MEDIA_BUS_FMT_Y10_2X8_PADHI_LE)) {
				val |= CAMSS_CSID_CID_n_CFG_RDI_MODE_PLAIN_PACKING;
				val |= CAMSS_CSID_CID_n_CFG_PLAIN_FORMAT_16;
				val |= CAMSS_CSID_CID_n_CFG_PLAIN_ALIGNMENT_LSB;
			}
		}

		FUNC13(val, csid->base +
			       FUNC1(ver, cid));

		if (tg->enabled) {
			val = CAMSS_CSID_TG_CTRL_ENABLE;
			FUNC13(val, csid->base +
				       FUNC2(ver));
		}
	} else {
		if (tg->enabled) {
			val = CAMSS_CSID_TG_CTRL_DISABLE;
			FUNC13(val, csid->base +
				       FUNC2(ver));
		}
	}

	return 0;
}