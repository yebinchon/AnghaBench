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
typedef  int u16 ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct dev_priv {int /*<<< orphan*/  chip_lock; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 scalar_t__ CSR0 ; 
 int CSR0_STOP ; 
 scalar_t__ CTRL1 ; 
 int CTRL1_SPND ; 
 scalar_t__ LADRL ; 
 scalar_t__ MODE ; 
 int FUNC1 (struct net_device*,int*) ; 
 struct dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void FUNC8 (struct net_device *dev)
{
	struct dev_priv *priv = FUNC2(dev);
	unsigned long flags;
	u16 multi_hash[4], mode = FUNC1(dev, multi_hash);
	int i, stopped;

	FUNC5(&priv->chip_lock, flags);

	stopped = FUNC4(dev->base_addr, CSR0) & CSR0_STOP;

	if (!stopped) {
		/*
		 * Put the chip into suspend mode
		 */
		FUNC7(dev->base_addr, CTRL1, CTRL1_SPND);

		/*
		 * Spin waiting for chip to report suspend mode
		 */
		while ((FUNC4(dev->base_addr, CTRL1) & CTRL1_SPND) == 0) {
			FUNC6(&priv->chip_lock, flags);
			FUNC3();
			FUNC5(&priv->chip_lock, flags);
		}
	}

	/*
	 * Update the multicast hash table
	 */
	for (i = 0; i < FUNC0(multi_hash); i++)
		FUNC7(dev->base_addr, i + LADRL, multi_hash[i]);

	/*
	 * Write the mode register
	 */
	FUNC7(dev->base_addr, MODE, mode);

	if (!stopped) {
		/*
		 * Put the chip back into running mode
		 */
		FUNC7(dev->base_addr, CTRL1, 0);
	}

	FUNC6(&priv->chip_lock, flags);
}