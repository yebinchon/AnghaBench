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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct m_can_classdev {struct device* dev; struct net_device* net; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  mram_config_vals ;

/* Variables and functions */
 int MRAM_CFG_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct device*) ; 
 struct net_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct m_can_classdev*,int /*<<< orphan*/ *) ; 
 struct m_can_classdev* FUNC6 (struct net_device*) ; 

struct m_can_classdev *FUNC7(struct device *dev)
{
	struct m_can_classdev *class_dev = NULL;
	u32 mram_config_vals[MRAM_CFG_LEN];
	struct net_device *net_dev;
	u32 tx_fifo_size;
	int ret;

	ret = FUNC4(FUNC3(dev),
					     "bosch,mram-cfg",
					     mram_config_vals,
					     sizeof(mram_config_vals) / 4);
	if (ret) {
		FUNC2(dev, "Could not get Message RAM configuration.");
		goto out;
	}

	/* Get TX FIFO size
	 * Defines the total amount of echo buffers for loopback
	 */
	tx_fifo_size = mram_config_vals[7];

	/* allocate the m_can device */
	net_dev = FUNC1(sizeof(*class_dev), tx_fifo_size);
	if (!net_dev) {
		FUNC2(dev, "Failed to allocate CAN device");
		goto out;
	}

	class_dev = FUNC6(net_dev);
	if (!class_dev) {
		FUNC2(dev, "Failed to init netdev cdevate");
		goto out;
	}

	class_dev->net = net_dev;
	class_dev->dev = dev;
	FUNC0(net_dev, dev);

	FUNC5(class_dev, mram_config_vals);
out:
	return class_dev;
}