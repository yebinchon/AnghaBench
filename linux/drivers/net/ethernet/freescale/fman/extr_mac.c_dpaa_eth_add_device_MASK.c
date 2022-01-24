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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mac_priv_s {int /*<<< orphan*/  dev; int /*<<< orphan*/  cell_index; } ;
struct mac_device {struct mac_priv_s* priv; } ;
struct dpaa_eth_data {int fman_hw_id; int /*<<< orphan*/  mac_hw_id; struct mac_device* mac_dev; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int ENOMEM ; 
 struct platform_device* FUNC0 (int) ; 
 int /*<<< orphan*/  eth_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct platform_device*,struct dpaa_eth_data*,int) ; 
 struct platform_device* FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 

__attribute__((used)) static struct platform_device *FUNC7(int fman_id,
						   struct mac_device *mac_dev)
{
	struct platform_device *pdev;
	struct dpaa_eth_data data;
	struct mac_priv_s	*priv;
	static int dpaa_eth_dev_cnt;
	int ret;

	priv = mac_dev->priv;

	data.mac_dev = mac_dev;
	data.mac_hw_id = priv->cell_index;
	data.fman_hw_id = fman_id;

	FUNC1(&eth_lock);
	pdev = FUNC5("dpaa-ethernet", dpaa_eth_dev_cnt);
	if (!pdev) {
		ret = -ENOMEM;
		goto no_mem;
	}

	pdev->dev.parent = priv->dev;

	ret = FUNC4(pdev, &data, sizeof(data));
	if (ret)
		goto err;

	ret = FUNC3(pdev);
	if (ret)
		goto err;

	dpaa_eth_dev_cnt++;
	FUNC2(&eth_lock);

	return pdev;

err:
	FUNC6(pdev);
no_mem:
	FUNC2(&eth_lock);

	return FUNC0(ret);
}