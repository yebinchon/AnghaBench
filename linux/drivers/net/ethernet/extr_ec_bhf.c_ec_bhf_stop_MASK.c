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
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  alloc_phys; int /*<<< orphan*/  alloc; int /*<<< orphan*/  alloc_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  alloc_phys; int /*<<< orphan*/  alloc; int /*<<< orphan*/  alloc_len; } ;
struct ec_bhf_priv {TYPE_1__ rx_buf; TYPE_2__ tx_buf; int /*<<< orphan*/  hrtimer; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (struct ec_bhf_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ec_bhf_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ec_bhf_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *net_dev)
{
	struct ec_bhf_priv *priv = FUNC4(net_dev);
	struct device *dev = FUNC0(priv);

	FUNC3(&priv->hrtimer);

	FUNC2(priv);

	FUNC5(net_dev);

	FUNC1(dev, priv->tx_buf.alloc_len,
			  priv->tx_buf.alloc, priv->tx_buf.alloc_phys);
	FUNC1(dev, priv->rx_buf.alloc_len,
			  priv->rx_buf.alloc, priv->rx_buf.alloc_phys);

	return 0;
}