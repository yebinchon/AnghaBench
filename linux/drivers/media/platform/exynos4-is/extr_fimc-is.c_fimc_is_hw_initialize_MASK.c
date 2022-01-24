#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_10__ {scalar_t__ sub_index; int /*<<< orphan*/ * size; int /*<<< orphan*/ * base; } ;
struct TYPE_9__ {int /*<<< orphan*/  paddr; } ;
struct TYPE_7__ {int /*<<< orphan*/  setfile_info; } ;
struct fimc_is {int config_index; int /*<<< orphan*/  state; TYPE_5__ setfile; int /*<<< orphan*/  is_dma_p_region; TYPE_4__ memory; TYPE_3__* is_p_region; TYPE_2__ fw; int /*<<< orphan*/ * sensor; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_8__ {scalar_t__* shared; } ;
struct TYPE_6__ {struct device dev; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int EIO ; 
 int /*<<< orphan*/  FIMC_IS_CONFIG_TIMEOUT ; 
 scalar_t__ FIMC_IS_MAGIC_NUMBER ; 
 int /*<<< orphan*/  FIMC_IS_SETFILE_6A3 ; 
 int FIMC_IS_SHARED_REGION_OFFSET ; 
#define  IS_SC_CAPTURE_STILL 131 
#define  IS_SC_CAPTURE_VIDEO 130 
#define  IS_SC_PREVIEW_STILL 129 
#define  IS_SC_PREVIEW_VIDEO 128 
 int /*<<< orphan*/  IS_ST_INIT_DONE ; 
 int /*<<< orphan*/  IS_ST_SETFILE_LOADED ; 
 int /*<<< orphan*/  IS_ST_STREAM_OFF ; 
 int MAX_SHARED_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC5 (struct fimc_is*) ; 
 int FUNC6 (struct fimc_is*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fimc_is*) ; 
 int FUNC8 (struct fimc_is*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct fimc_is*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fimc_is*) ; 
 int FUNC11 (struct fimc_is*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC15(struct fimc_is *is)
{
	static const int config_ids[] = {
		IS_SC_PREVIEW_STILL, IS_SC_PREVIEW_VIDEO,
		IS_SC_CAPTURE_STILL, IS_SC_CAPTURE_VIDEO
	};
	struct device *dev = &is->pdev->dev;
	u32 prev_id;
	int i, ret;

	/* Sensor initialization. Only one sensor is currently supported. */
	ret = FUNC6(is, &is->sensor[0]);
	if (ret < 0)
		return ret;

	/* Get the setfile address. */
	FUNC4(is);

	ret = FUNC11(is, IS_ST_SETFILE_LOADED, 1,
				 FIMC_IS_CONFIG_TIMEOUT);
	if (ret < 0) {
		FUNC2(dev, "get setfile address timed out\n");
		return ret;
	}
	FUNC12("setfile.base: %#x\n", is->setfile.base);

	/* Load the setfile. */
	FUNC9(is, FIMC_IS_SETFILE_6A3);
	FUNC1(IS_ST_SETFILE_LOADED, &is->state);
	FUNC5(is);
	ret = FUNC11(is, IS_ST_SETFILE_LOADED, 1,
				 FIMC_IS_CONFIG_TIMEOUT);
	if (ret < 0) {
		FUNC2(dev, "loading setfile timed out\n");
		return ret;
	}

	FUNC12("setfile: base: %#x, size: %d\n",
		 is->setfile.base, is->setfile.size);
	FUNC13("FIMC-IS Setfile info: %s\n", is->fw.setfile_info);

	/* Check magic number. */
	if (is->is_p_region->shared[MAX_SHARED_COUNT - 1] !=
	    FIMC_IS_MAGIC_NUMBER) {
		FUNC2(dev, "magic number error!\n");
		return -EIO;
	}

	FUNC12("shared region: %pad, parameter region: %pad\n",
		 &is->memory.paddr + FIMC_IS_SHARED_REGION_OFFSET,
		 &is->is_dma_p_region);

	is->setfile.sub_index = 0;

	/* Stream off. */
	FUNC7(is);
	ret = FUNC11(is, IS_ST_STREAM_OFF, 1,
				 FIMC_IS_CONFIG_TIMEOUT);
	if (ret < 0) {
		FUNC2(dev, "stream off timeout\n");
		return ret;
	}

	/* Preserve previous mode. */
	prev_id = is->config_index;

	/* Set initial parameter values. */
	for (i = 0; i < FUNC0(config_ids); i++) {
		is->config_index = config_ids[i];
		FUNC10(is);
		ret = FUNC8(is, true);
		if (ret < 0) {
			is->config_index = prev_id;
			return ret;
		}
	}
	is->config_index = prev_id;

	FUNC14(IS_ST_INIT_DONE, &is->state);
	FUNC3(dev, "initialization sequence completed (%d)\n",
						is->config_index);
	return 0;
}