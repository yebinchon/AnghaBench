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
struct dpaa2_eth_priv {int num_fqs; int /*<<< orphan*/  dpio_cpumask; struct dpaa2_eth_fq* fq; TYPE_2__* net_dev; } ;
struct dpaa2_eth_fq {int type; int target_cpu; int /*<<< orphan*/  channel; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
#define  DPAA2_RX_FQ 129 
#define  DPAA2_TX_CONF_FQ 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dpaa2_eth_priv*,int) ; 
 int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC4 (struct dpaa2_eth_priv*) ; 

__attribute__((used)) static void FUNC5(struct dpaa2_eth_priv *priv)
{
	struct device *dev = priv->net_dev->dev.parent;
	struct dpaa2_eth_fq *fq;
	int rx_cpu, txc_cpu;
	int i;

	/* For each FQ, pick one channel/CPU to deliver frames to.
	 * This may well change at runtime, either through irqbalance or
	 * through direct user intervention.
	 */
	rx_cpu = txc_cpu = FUNC0(&priv->dpio_cpumask);

	for (i = 0; i < priv->num_fqs; i++) {
		fq = &priv->fq[i];
		switch (fq->type) {
		case DPAA2_RX_FQ:
			fq->target_cpu = rx_cpu;
			rx_cpu = FUNC1(rx_cpu, &priv->dpio_cpumask);
			if (rx_cpu >= nr_cpu_ids)
				rx_cpu = FUNC0(&priv->dpio_cpumask);
			break;
		case DPAA2_TX_CONF_FQ:
			fq->target_cpu = txc_cpu;
			txc_cpu = FUNC1(txc_cpu, &priv->dpio_cpumask);
			if (txc_cpu >= nr_cpu_ids)
				txc_cpu = FUNC0(&priv->dpio_cpumask);
			break;
		default:
			FUNC2(dev, "Unknown FQ type: %d\n", fq->type);
		}
		fq->channel = FUNC3(priv, fq->target_cpu);
	}

	FUNC4(priv);
}