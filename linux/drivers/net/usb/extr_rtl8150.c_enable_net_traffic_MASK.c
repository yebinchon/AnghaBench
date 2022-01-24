#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_8__ {int /*<<< orphan*/  flags; TYPE_1__* udev; } ;
typedef  TYPE_2__ rtl8150_t ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR ; 
 int /*<<< orphan*/  MSR ; 
 int /*<<< orphan*/  RCR ; 
 int /*<<< orphan*/  RTL8150_HW_CRC ; 
 int /*<<< orphan*/  TCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC5(rtl8150_t * dev)
{
	u8 cr, tcr, rcr, msr;

	if (!FUNC2(dev)) {
		FUNC0(&dev->udev->dev, "device reset failed\n");
	}
	/* RCR bit7=1 attach Rx info at the end;  =0 HW CRC (which is broken) */
	rcr = 0x9e;
	tcr = 0xd8;
	cr = 0x0c;
	if (!(rcr & 0x80))
		FUNC3(RTL8150_HW_CRC, &dev->flags);
	FUNC4(dev, RCR, 1, &rcr);
	FUNC4(dev, TCR, 1, &tcr);
	FUNC4(dev, CR, 1, &cr);
	FUNC1(dev, MSR, 1, &msr);

	return 0;
}