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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int magic; scalar_t__ offset; int /*<<< orphan*/  len; } ;
struct bnad_iocmd_comp {int comp_status; int /*<<< orphan*/  comp; struct bnad* bnad; } ;
struct TYPE_4__ {int /*<<< orphan*/  flash; } ;
struct bnad {int /*<<< orphan*/  bna_lock; int /*<<< orphan*/  id; TYPE_2__ bna; TYPE_1__* pcidev; } ;
struct TYPE_3__ {int vendor; int device; } ;

/* Variables and functions */
 int BFA_STATUS_OK ; 
 int EFAULT ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct bnad_iocmd_comp*) ; 
 int /*<<< orphan*/  bnad_cb_completion ; 
 scalar_t__ FUNC1 (struct bnad*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bnad* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct net_device *netdev, struct ethtool_eeprom *eeprom,
		u8 *bytes)
{
	struct bnad *bnad = FUNC3(netdev);
	struct bnad_iocmd_comp fcomp;
	u32 flash_part = 0, base_offset = 0;
	unsigned long flags = 0;
	int ret = 0;

	/* Check if the flash update request is valid */
	if (eeprom->magic != (bnad->pcidev->vendor |
			     (bnad->pcidev->device << 16)))
		return -EINVAL;

	/* Query the flash partition based on the offset */
	flash_part = FUNC1(bnad,
				eeprom->offset, &base_offset);
	if (flash_part == 0)
		return -EFAULT;

	fcomp.bnad = bnad;
	fcomp.comp_status = 0;

	FUNC2(&fcomp.comp);
	FUNC4(&bnad->bna_lock, flags);
	ret = FUNC0(&bnad->bna.flash, flash_part,
				bnad->id, bytes, eeprom->len,
				eeprom->offset - base_offset,
				bnad_cb_completion, &fcomp);
	if (ret != BFA_STATUS_OK) {
		FUNC5(&bnad->bna_lock, flags);
		goto done;
	}

	FUNC5(&bnad->bna_lock, flags);
	FUNC6(&fcomp.comp);
	ret = fcomp.comp_status;
done:
	return ret;
}