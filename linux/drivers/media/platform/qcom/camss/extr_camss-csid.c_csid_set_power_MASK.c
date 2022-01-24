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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;
struct device {int dummy; } ;
struct csid_device {int /*<<< orphan*/  vdda; int /*<<< orphan*/  clock; int /*<<< orphan*/  nclocks; int /*<<< orphan*/  irq; scalar_t__ base; TYPE_1__* camss; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 scalar_t__ CAMSS_CSID_HW_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct device*) ; 
 int FUNC2 (struct csid_device*) ; 
 int FUNC3 (struct csid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 struct csid_device* FUNC12 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC13(struct v4l2_subdev *sd, int on)
{
	struct csid_device *csid = FUNC12(sd);
	struct device *dev = csid->camss->dev;
	int ret;

	if (on) {
		u32 hw_version;

		ret = FUNC7(dev);
		if (ret < 0)
			return ret;

		ret = FUNC11(csid->vdda);
		if (ret < 0) {
			FUNC8(dev);
			return ret;
		}

		ret = FUNC3(csid);
		if (ret < 0) {
			FUNC10(csid->vdda);
			FUNC8(dev);
			return ret;
		}

		ret = FUNC1(csid->nclocks, csid->clock, dev);
		if (ret < 0) {
			FUNC10(csid->vdda);
			FUNC8(dev);
			return ret;
		}

		FUNC6(csid->irq);

		ret = FUNC2(csid);
		if (ret < 0) {
			FUNC5(csid->irq);
			FUNC0(csid->nclocks, csid->clock);
			FUNC10(csid->vdda);
			FUNC8(dev);
			return ret;
		}

		hw_version = FUNC9(csid->base + CAMSS_CSID_HW_VERSION);
		FUNC4(dev, "CSID HW Version = 0x%08x\n", hw_version);
	} else {
		FUNC5(csid->irq);
		FUNC0(csid->nclocks, csid->clock);
		ret = FUNC10(csid->vdda);
		FUNC8(dev);
	}

	return ret;
}