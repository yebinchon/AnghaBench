#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct b43legacy_wldev {TYPE_2__* dev; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_MMIO_XMITSTAT_0 ; 
 int /*<<< orphan*/  B43legacy_MMIO_XMITSTAT_1 ; 
 int FUNC0 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct b43legacy_wldev *dev)
{
	u32 dummy;

	if (dev->dev->id.revision < 5)
		return;
	/* Read all entries from the microcode TXstatus FIFO
	 * and throw them away.
	 */
	while (1) {
		dummy = FUNC0(dev, B43legacy_MMIO_XMITSTAT_0);
		if (!(dummy & 0x00000001))
			break;
		dummy = FUNC0(dev, B43legacy_MMIO_XMITSTAT_1);
	}
}