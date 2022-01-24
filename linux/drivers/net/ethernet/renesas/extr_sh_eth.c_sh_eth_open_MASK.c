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
struct sh_eth_private {int is_opened; TYPE_2__* pdev; int /*<<< orphan*/  napi; TYPE_1__* cd; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct sh_eth_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  sh_eth_interrupt ; 
 int FUNC10 (struct net_device*) ; 
 int FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC4(ndev);
	int ret;

	FUNC6(&mdp->pdev->dev);

	FUNC2(&mdp->napi);

	ret = FUNC8(ndev->irq, sh_eth_interrupt,
			  mdp->cd->irq_flags, ndev->name, ndev);
	if (ret) {
		FUNC3(ndev, "Can not assign IRQ number\n");
		goto out_napi_off;
	}

	/* Descriptor set */
	ret = FUNC11(ndev);
	if (ret)
		goto out_free_irq;

	/* device init */
	ret = FUNC9(ndev);
	if (ret)
		goto out_free_irq;

	/* PHY control start*/
	ret = FUNC10(ndev);
	if (ret)
		goto out_free_irq;

	FUNC5(ndev);

	mdp->is_opened = 1;

	return ret;

out_free_irq:
	FUNC0(ndev->irq, ndev);
out_napi_off:
	FUNC1(&mdp->napi);
	FUNC7(&mdp->pdev->dev);
	return ret;
}