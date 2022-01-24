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
struct pxa168_eth_private {int /*<<< orphan*/  tx_timeout_task; int /*<<< orphan*/  tx_desc_count; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct pxa168_eth_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct pxa168_eth_private *pep = FUNC1(dev);

	FUNC0(dev, "TX timeout  desc_count %d\n", pep->tx_desc_count);

	FUNC2(&pep->tx_timeout_task);
}