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
typedef  int u8 ;
struct b53_device {int /*<<< orphan*/ * vta_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  B53_ARLIO_PAGE ; 
 int EIO ; 
 int VTA_START_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct b53_device *dev, u8 op)
{
	unsigned int i;

	FUNC1(dev, B53_ARLIO_PAGE, dev->vta_regs[0], VTA_START_CMD | op);

	for (i = 0; i < 10; i++) {
		u8 vta;

		FUNC0(dev, B53_ARLIO_PAGE, dev->vta_regs[0], &vta);
		if (!(vta & VTA_START_CMD))
			return 0;

		FUNC2(100, 200);
	}

	return -EIO;
}