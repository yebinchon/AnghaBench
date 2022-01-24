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
struct scc_channel {int /*<<< orphan*/  tx_queue; int /*<<< orphan*/ * tx_buff; int /*<<< orphan*/  init; } ;
struct net_device {scalar_t__ ml_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct scc_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct scc_channel *scc = (struct scc_channel *) dev->ml_priv;

 	if (!scc->init)
		return -EINVAL;

	scc->tx_buff = NULL;
	FUNC2(&scc->tx_queue);
 
	FUNC0(scc);

	FUNC1(dev);
	return 0;
}