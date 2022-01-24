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
struct net_device {scalar_t__ num_tc; } ;
struct dpaa2_eth_priv {struct dpaa2_eth_fq* fq; struct net_device* net_dev; } ;
struct dpaa2_eth_fq {int /*<<< orphan*/  target_cpu; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpumask*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cpumask*) ; 
 int FUNC2 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int FUNC4 (struct net_device*,struct cpumask*,int) ; 

__attribute__((used)) static int FUNC5(struct dpaa2_eth_priv *priv)
{
	struct net_device *net_dev = priv->net_dev;
	struct cpumask xps_mask;
	struct dpaa2_eth_fq *fq;
	int i, num_queues, netdev_queues;
	int err = 0;

	num_queues = FUNC2(priv);
	netdev_queues = (net_dev->num_tc ? : 1) * num_queues;

	/* The first <num_queues> entries in priv->fq array are Tx/Tx conf
	 * queues, so only process those
	 */
	for (i = 0; i < netdev_queues; i++) {
		fq = &priv->fq[i % num_queues];

		FUNC0(&xps_mask);
		FUNC1(fq->target_cpu, &xps_mask);

		err = FUNC4(net_dev, &xps_mask, i);
		if (err) {
			FUNC3(net_dev, "Error setting XPS queue\n");
			break;
		}
	}

	return err;
}