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
struct isp_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*) ; 
 int FUNC2 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_device*) ; 
 int FUNC4 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct isp_device*) ; 
 int FUNC6 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct isp_device*) ; 
 int FUNC8 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct isp_device*) ; 
 int FUNC10 (struct isp_device*) ; 
 int FUNC11 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct isp_device*) ; 
 int FUNC13 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct isp_device*) ; 
 int FUNC15 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct isp_device*) ; 
 int FUNC17 (struct isp_device*) ; 

__attribute__((used)) static int FUNC18(struct isp_device *isp)
{
	int ret;

	ret = FUNC8(isp);
	if (ret < 0) {
		FUNC0(isp->dev, "CSI PHY initialization failed\n");
		return ret;
	}

	ret = FUNC6(isp);
	if (ret < 0) {
		FUNC0(isp->dev, "CSI2 initialization failed\n");
		goto error_csi2;
	}

	ret = FUNC4(isp);
	if (ret < 0) {
		if (ret != -EPROBE_DEFER)
			FUNC0(isp->dev, "CCP2 initialization failed\n");
		goto error_ccp2;
	}

	ret = FUNC2(isp);
	if (ret < 0) {
		FUNC0(isp->dev, "CCDC initialization failed\n");
		goto error_ccdc;
	}

	ret = FUNC15(isp);
	if (ret < 0) {
		FUNC0(isp->dev, "Preview initialization failed\n");
		goto error_preview;
	}

	ret = FUNC17(isp);
	if (ret < 0) {
		FUNC0(isp->dev, "Resizer initialization failed\n");
		goto error_resizer;
	}

	ret = FUNC13(isp);
	if (ret < 0) {
		FUNC0(isp->dev, "Histogram initialization failed\n");
		goto error_hist;
	}

	ret = FUNC10(isp);
	if (ret < 0) {
		FUNC0(isp->dev, "H3A AEWB initialization failed\n");
		goto error_h3a_aewb;
	}

	ret = FUNC11(isp);
	if (ret < 0) {
		FUNC0(isp->dev, "H3A AF initialization failed\n");
		goto error_h3a_af;
	}

	return 0;

error_h3a_af:
	FUNC9(isp);
error_h3a_aewb:
	FUNC12(isp);
error_hist:
	FUNC16(isp);
error_resizer:
	FUNC14(isp);
error_preview:
	FUNC1(isp);
error_ccdc:
	FUNC3(isp);
error_ccp2:
	FUNC5(isp);
error_csi2:
	FUNC7(isp);

	return ret;
}