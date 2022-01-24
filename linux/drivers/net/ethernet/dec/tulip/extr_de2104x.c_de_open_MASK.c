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
struct net_device {int mtu; int /*<<< orphan*/  name; } ;
struct de_private {int rx_buf_sz; int /*<<< orphan*/  media_timer; TYPE_1__* pdev; } ;
struct TYPE_2__ {int irq; } ;

/* Variables and functions */
 scalar_t__ DE_TIMER_NO_LINK ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  IntrMask ; 
 int PKT_BUF_SZ ; 
 int FUNC0 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct de_private*) ; 
 int FUNC2 (struct de_private*) ; 
 int /*<<< orphan*/  de_interrupt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int const,struct net_device*) ; 
 int /*<<< orphan*/  ifup ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int const,...) ; 
 struct de_private* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct de_private*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int FUNC10 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC11 (struct net_device *dev)
{
	struct de_private *de = FUNC7(dev);
	const int irq = de->pdev->irq;
	int rc;

	FUNC8(de, ifup, dev, "enabling interface\n");

	de->rx_buf_sz = (dev->mtu <= 1500 ? PKT_BUF_SZ : dev->mtu + 32);

	rc = FUNC0(de);
	if (rc) {
		FUNC6(dev, "ring allocation failure, err=%d\n", rc);
		return rc;
	}

	FUNC3(IntrMask, 0);

	rc = FUNC10(irq, de_interrupt, IRQF_SHARED, dev->name, dev);
	if (rc) {
		FUNC6(dev, "IRQ %d request failure, err=%d\n", irq, rc);
		goto err_out_free;
	}

	rc = FUNC2(de);
	if (rc) {
		FUNC6(dev, "h/w init failure, err=%d\n", rc);
		goto err_out_free_irq;
	}

	FUNC9(dev);
	FUNC5(&de->media_timer, jiffies + DE_TIMER_NO_LINK);

	return 0;

err_out_free_irq:
	FUNC4(irq, dev);
err_out_free:
	FUNC1(de);
	return rc;
}