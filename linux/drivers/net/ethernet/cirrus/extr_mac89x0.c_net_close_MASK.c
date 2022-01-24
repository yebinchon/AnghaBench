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
struct net_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  PP_BufCFG ; 
 int /*<<< orphan*/  PP_BusCTL ; 
 int /*<<< orphan*/  PP_RxCFG ; 
 int /*<<< orphan*/  PP_TxCFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct net_device *dev)
{

	FUNC2(dev, PP_RxCFG, 0);
	FUNC2(dev, PP_TxCFG, 0);
	FUNC2(dev, PP_BufCFG, 0);
	FUNC2(dev, PP_BusCTL, 0);

	FUNC1(dev);

	FUNC0(dev->irq, dev);

	/* Update the statistics here. */

	return 0;

}