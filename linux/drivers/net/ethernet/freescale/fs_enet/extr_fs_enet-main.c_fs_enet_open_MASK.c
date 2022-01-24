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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct fs_enet_private {int /*<<< orphan*/  napi; int /*<<< orphan*/  interrupt; int /*<<< orphan*/  dev; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  fs_enet_interrupt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct fs_enet_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct fs_enet_private *fep = FUNC6(dev);
	int r;
	int err;

	/* to initialize the fep->cur_rx,... */
	/* not doing this, will cause a crash in fs_enet_napi */
	FUNC2(fep->ndev);

	FUNC5(&fep->napi);

	/* Install our interrupt handler. */
	r = FUNC9(fep->interrupt, fs_enet_interrupt, IRQF_SHARED,
			"fs_enet-mac", dev);
	if (r != 0) {
		FUNC0(fep->dev, "Could not allocate FS_ENET IRQ!");
		FUNC4(&fep->napi);
		return -EINVAL;
	}

	err = FUNC3(dev);
	if (err) {
		FUNC1(fep->interrupt, dev);
		FUNC4(&fep->napi);
		return err;
	}
	FUNC8(dev->phydev);

	FUNC7(dev);

	return 0;
}