#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {int revision; } ;
struct ssb_device {TYPE_4__ id; TYPE_2__* bus; } ;
struct b44 {int phy_addr; int /*<<< orphan*/  flags; struct ssb_device* sdev; int /*<<< orphan*/  imask; TYPE_3__* dev; int /*<<< orphan*/  dma_offset; } ;
struct TYPE_7__ {int /*<<< orphan*/ * dev_addr; } ;
struct TYPE_5__ {int et1phyaddr; int et0phyaddr; int /*<<< orphan*/ * et0mac; int /*<<< orphan*/ * et1mac; } ;
struct TYPE_6__ {scalar_t__ bustype; TYPE_1__ sprom; } ;

/* Variables and functions */
 int /*<<< orphan*/  B44_FLAG_B0_ANDLATER ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IMASK_DEF ; 
 scalar_t__ SSB_BUSTYPE_SSB ; 
 int instance ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssb_device*) ; 

__attribute__((used)) static int FUNC4(struct b44 *bp)
{
	struct ssb_device *sdev = bp->sdev;
	int err = 0;
	u8 *addr;

	bp->dma_offset = FUNC3(sdev);

	if (sdev->bus->bustype == SSB_BUSTYPE_SSB &&
	    instance > 1) {
		addr = sdev->bus->sprom.et1mac;
		bp->phy_addr = sdev->bus->sprom.et1phyaddr;
	} else {
		addr = sdev->bus->sprom.et0mac;
		bp->phy_addr = sdev->bus->sprom.et0phyaddr;
	}
	/* Some ROMs have buggy PHY addresses with the high
	 * bits set (sign extension?). Truncate them to a
	 * valid PHY address. */
	bp->phy_addr &= 0x1F;

	FUNC1(bp->dev->dev_addr, addr, ETH_ALEN);

	if (!FUNC0(&bp->dev->dev_addr[0])){
		FUNC2("Invalid MAC address found in EEPROM\n");
		return -EINVAL;
	}

	bp->imask = IMASK_DEF;

	/* XXX - really required?
	   bp->flags |= B44_FLAG_BUGGY_TXPTR;
	*/

	if (bp->sdev->id.revision >= 7)
		bp->flags |= B44_FLAG_B0_ANDLATER;

	return err;
}