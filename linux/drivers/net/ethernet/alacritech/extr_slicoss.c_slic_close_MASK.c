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
typedef  int u32 ;
struct slic_device {int /*<<< orphan*/  upr_list; TYPE_1__* pdev; int /*<<< orphan*/  napi; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int BMCR_PDOWN ; 
 int MII_BMCR ; 
 int SLIC_GRCR_ADDRAEN ; 
 int SLIC_GRCR_CTLEN ; 
 int SLIC_GRCR_HASHSIZE ; 
 int SLIC_GRCR_HASHSIZE_SHIFT ; 
 int SLIC_GRCR_RESET ; 
 int SLIC_GXCR_PAUSEEN ; 
 int SLIC_GXCR_RESET ; 
 int SLIC_ICR_INT_OFF ; 
 int /*<<< orphan*/  SLIC_REG_ICR ; 
 int /*<<< orphan*/  SLIC_REG_ISR ; 
 int /*<<< orphan*/  SLIC_REG_QUIESCE ; 
 int /*<<< orphan*/  SLIC_REG_WPHY ; 
 int /*<<< orphan*/  SLIC_REG_WRCFG ; 
 int /*<<< orphan*/  SLIC_REG_WXCFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct slic_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct slic_device* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct slic_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev)
{
	struct slic_device *sdev = FUNC2(dev);
	u32 val;

	FUNC4(dev);

	/* stop irq handling */
	FUNC1(&sdev->napi);
	FUNC12(sdev, SLIC_REG_ICR, SLIC_ICR_INT_OFF);
	FUNC12(sdev, SLIC_REG_ISR, 0);
	FUNC7(sdev);

	FUNC0(sdev->pdev->irq, sdev);
	/* turn off RCV and XMT and power down PHY */
	val = SLIC_GXCR_RESET | SLIC_GXCR_PAUSEEN;
	FUNC12(sdev, SLIC_REG_WXCFG, val);

	val = SLIC_GRCR_RESET | SLIC_GRCR_CTLEN | SLIC_GRCR_ADDRAEN |
	      SLIC_GRCR_HASHSIZE << SLIC_GRCR_HASHSIZE_SHIFT;
	FUNC12(sdev, SLIC_REG_WRCFG, val);

	val = MII_BMCR << 16 | BMCR_PDOWN;
	FUNC12(sdev, SLIC_REG_WPHY, val);
	FUNC7(sdev);

	FUNC6(&sdev->upr_list);
	FUNC12(sdev, SLIC_REG_QUIESCE, 0);

	FUNC10(sdev);
	FUNC11(sdev);
	FUNC8(sdev);
	FUNC9(sdev);

	FUNC5(sdev);
	FUNC3(dev);

	return 0;
}