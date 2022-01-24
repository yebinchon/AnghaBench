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
struct net_device {int dummy; } ;
struct ftgmac100 {int /*<<< orphan*/  reset_task; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FTGMAC100_OFFSET_IER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct ftgmac100* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev)
{
	struct ftgmac100 *priv = FUNC1(netdev);

	/* Disable all interrupts */
	FUNC0(0, priv->base + FTGMAC100_OFFSET_IER);

	/* Do the reset outside of interrupt context */
	FUNC2(&priv->reset_task);
}