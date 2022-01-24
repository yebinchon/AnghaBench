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
struct net_device {int dummy; } ;
struct dpaa_priv {int /*<<< orphan*/  percpu_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct dpaa_percpu_priv {TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct dpaa_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpaa_priv const*,int /*<<< orphan*/ ,struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct dpaa_percpu_priv* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC5(struct net_device *net_dev)
{
	struct dpaa_percpu_priv *percpu_priv;
	const struct dpaa_priv	*priv;

	priv = FUNC2(net_dev);
	percpu_priv = FUNC4(priv->percpu_priv);

	FUNC3(priv, timer, net_dev, "Transmit timeout latency: %u ms\n",
		   FUNC1(jiffies - FUNC0(net_dev)));

	percpu_priv->stats.tx_errors++;
}