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
struct net_device {int dummy; } ;
struct firmware {int /*<<< orphan*/  size; scalar_t__ data; } ;
struct ethtool_flash {int /*<<< orphan*/  data; } ;
struct bnad_iocmd_comp {int comp_status; int /*<<< orphan*/  comp; struct bnad* bnad; } ;
struct TYPE_4__ {int /*<<< orphan*/  flash; } ;
struct bnad {int /*<<< orphan*/  bna_lock; int /*<<< orphan*/  id; TYPE_2__ bna; TYPE_1__* pcidev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FLASH_PART_FWIMG ; 
 int BFA_STATUS_OK ; 
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bnad_iocmd_comp*) ; 
 int /*<<< orphan*/  bnad_cb_completion ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct bnad* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct firmware const*) ; 
 int FUNC6 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct net_device *netdev, struct ethtool_flash *eflash)
{
	struct bnad *bnad = FUNC3(netdev);
	struct bnad_iocmd_comp fcomp;
	const struct firmware *fw;
	int ret = 0;

	ret = FUNC6(&fw, eflash->data, &bnad->pcidev->dev);
	if (ret) {
		FUNC2(netdev, "can't load firmware %s\n", eflash->data);
		goto out;
	}

	fcomp.bnad = bnad;
	fcomp.comp_status = 0;

	FUNC1(&fcomp.comp);
	FUNC7(&bnad->bna_lock);
	ret = FUNC0(&bnad->bna.flash, BFA_FLASH_PART_FWIMG,
				bnad->id, (u8 *)fw->data, fw->size, 0,
				bnad_cb_completion, &fcomp);
	if (ret != BFA_STATUS_OK) {
		FUNC4(netdev, "flash update failed with err=%d\n", ret);
		ret = -EIO;
		FUNC8(&bnad->bna_lock);
		goto out;
	}

	FUNC8(&bnad->bna_lock);
	FUNC9(&fcomp.comp);
	if (fcomp.comp_status != BFA_STATUS_OK) {
		ret = -EIO;
		FUNC4(netdev,
			    "firmware image update failed with err=%d\n",
			    fcomp.comp_status);
	}
out:
	FUNC5(fw);
	return ret;
}