#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ushc_data {int caps; TYPE_1__* usb_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  USHC_GET_CAPS ; 
 int /*<<< orphan*/  USHC_GET_CAPS_TYPE ; 
 int USHC_GET_CAPS_VERSION_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ushc_data *ushc)
{
	int ret;
	int version;

	ret = FUNC2(ushc->usb_dev, FUNC3(ushc->usb_dev, 0),
			      USHC_GET_CAPS, USHC_GET_CAPS_TYPE,
			      0, 0, &ushc->caps, sizeof(ushc->caps), 100);
	if (ret < 0)
		return ret;

	ushc->caps = FUNC1(ushc->caps);

	version = ushc->caps & USHC_GET_CAPS_VERSION_MASK;
	if (version != 0x02) {
		FUNC0(&ushc->usb_dev->dev, "controller version %d is not supported\n", version);
		return -EINVAL;
	}

	return 0;
}