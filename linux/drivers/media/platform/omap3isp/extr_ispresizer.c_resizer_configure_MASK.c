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
struct v4l2_mbus_framefmt {int width; int /*<<< orphan*/  height; int /*<<< orphan*/  code; } ;
struct resizer_luma_yenh {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct isp_res_device {scalar_t__ input; struct v4l2_mbus_framefmt* formats; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  DEFAULT_PHASE ; 
 scalar_t__ RESIZER_INPUT_VP ; 
 size_t RESZ_PAD_SINK ; 
 size_t RESZ_PAD_SOURCE ; 
 int /*<<< orphan*/  RSZ_YUV422 ; 
 int /*<<< orphan*/  FUNC1 (struct isp_res_device*,struct v4l2_mbus_framefmt*,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_res_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_res_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_res_device*,struct resizer_luma_yenh*) ; 
 int /*<<< orphan*/  FUNC5 (struct isp_res_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct isp_res_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct isp_res_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct isp_res_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct isp_res_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct isp_res_device *res)
{
	struct v4l2_mbus_framefmt *informat, *outformat;
	struct resizer_luma_yenh luma = {0, 0, 0, 0};

	FUNC8(res, res->input);

	informat = &res->formats[RESZ_PAD_SINK];
	outformat = &res->formats[RESZ_PAD_SOURCE];

	/* RESZ_PAD_SINK */
	if (res->input == RESIZER_INPUT_VP)
		FUNC2(res, 0);
	else
		FUNC2(res, FUNC0(informat->width, 0x10) * 2);

	/* YUV422 interleaved, default phase, no luma enhancement */
	FUNC3(res, RSZ_YUV422);
	FUNC9(res, informat->code);
	FUNC7(res, DEFAULT_PHASE, DEFAULT_PHASE);
	FUNC4(res, &luma);

	/* RESZ_PAD_SOURCE */
	FUNC5(res, FUNC0(outformat->width * 2, 32));
	FUNC6(res, outformat->width, outformat->height);

	FUNC1(res, informat, outformat);
}