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
struct tmComResHWDescr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dwHostHibernatMemRegionSize; int /*<<< orphan*/  dwHostHibernatMemRegion; int /*<<< orphan*/  dwHostMemoryRegionSize; int /*<<< orphan*/  dwHostMemoryRegion; int /*<<< orphan*/  dwDeviceRegistersLocation; int /*<<< orphan*/  bCapabilities; int /*<<< orphan*/  dwClockUpdateRes; int /*<<< orphan*/  dwClockFrequency; int /*<<< orphan*/  bcdSpecVersion; int /*<<< orphan*/  bDescriptorSubtype; int /*<<< orphan*/  bDescriptorType; int /*<<< orphan*/  bLength; } ;
struct saa7164_dev {TYPE_1__ hwdesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,TYPE_1__*,...) ; 

__attribute__((used)) static void FUNC1(struct saa7164_dev *dev)
{
	FUNC0(1, "@0x%p hwdesc sizeof(struct tmComResHWDescr) = %d bytes\n",
		&dev->hwdesc, (u32)sizeof(struct tmComResHWDescr));

	FUNC0(1, " .bLength = 0x%x\n", dev->hwdesc.bLength);
	FUNC0(1, " .bDescriptorType = 0x%x\n", dev->hwdesc.bDescriptorType);
	FUNC0(1, " .bDescriptorSubtype = 0x%x\n",
		dev->hwdesc.bDescriptorSubtype);

	FUNC0(1, " .bcdSpecVersion = 0x%x\n", dev->hwdesc.bcdSpecVersion);
	FUNC0(1, " .dwClockFrequency = 0x%x\n", dev->hwdesc.dwClockFrequency);
	FUNC0(1, " .dwClockUpdateRes = 0x%x\n", dev->hwdesc.dwClockUpdateRes);
	FUNC0(1, " .bCapabilities = 0x%x\n", dev->hwdesc.bCapabilities);
	FUNC0(1, " .dwDeviceRegistersLocation = 0x%x\n",
		dev->hwdesc.dwDeviceRegistersLocation);

	FUNC0(1, " .dwHostMemoryRegion = 0x%x\n",
		dev->hwdesc.dwHostMemoryRegion);

	FUNC0(1, " .dwHostMemoryRegionSize = 0x%x\n",
		dev->hwdesc.dwHostMemoryRegionSize);

	FUNC0(1, " .dwHostHibernatMemRegion = 0x%x\n",
		dev->hwdesc.dwHostHibernatMemRegion);

	FUNC0(1, " .dwHostHibernatMemRegionSize = 0x%x\n",
		dev->hwdesc.dwHostHibernatMemRegionSize);
}