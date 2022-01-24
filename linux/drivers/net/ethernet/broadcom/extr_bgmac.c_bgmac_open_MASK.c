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
struct net_device {int /*<<< orphan*/  phydev; int /*<<< orphan*/  name; } ;
struct bgmac {int /*<<< orphan*/  napi; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct bgmac*) ; 
 int /*<<< orphan*/  FUNC1 (struct bgmac*) ; 
 int /*<<< orphan*/  FUNC2 (struct bgmac*) ; 
 int FUNC3 (struct bgmac*) ; 
 int /*<<< orphan*/  bgmac_interrupt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct bgmac* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *net_dev)
{
	struct bgmac *bgmac = FUNC6(net_dev);
	int err = 0;

	FUNC1(bgmac);

	err = FUNC3(bgmac);
	if (err)
		return err;

	/* Specs say about reclaiming rings here, but we do that in DMA init */
	FUNC0(bgmac);

	err = FUNC9(bgmac->irq, bgmac_interrupt, IRQF_SHARED,
			  net_dev->name, net_dev);
	if (err < 0) {
		FUNC4(bgmac->dev, "IRQ request error: %d!\n", err);
		FUNC2(bgmac);
		return err;
	}
	FUNC5(&bgmac->napi);

	FUNC8(net_dev->phydev);

	FUNC7(net_dev);

	return 0;
}