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
struct net_device {scalar_t__ irq; } ;
struct ace_private {int /*<<< orphan*/  regs; int /*<<< orphan*/  trace_buf; int /*<<< orphan*/  skb; int /*<<< orphan*/  info_dma; scalar_t__ info; int /*<<< orphan*/  pdev; } ;
struct ace_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ace_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct ace_private *ap;

	ap = FUNC4(dev);

	FUNC0(dev);

	if (ap->info)
		FUNC5(ap->pdev, sizeof(struct ace_info),
				    ap->info, ap->info_dma);
	FUNC3(ap->skb);
	FUNC3(ap->trace_buf);

	if (dev->irq)
		FUNC1(dev->irq, dev);

	FUNC2(ap->regs);
}