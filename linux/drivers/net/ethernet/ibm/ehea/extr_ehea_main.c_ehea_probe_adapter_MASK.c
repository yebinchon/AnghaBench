#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct ehea_adapter {int /*<<< orphan*/  list; TYPE_2__* neq; int /*<<< orphan*/ ** port; int /*<<< orphan*/  neq_tasklet; int /*<<< orphan*/  pd; int /*<<< orphan*/  handle; struct platform_device* ofdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  ist1; } ;
struct TYPE_7__ {TYPE_1__ attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHEA_MAX_ENTRIES_EQ ; 
 int EHEA_MAX_PORTS ; 
 int /*<<< orphan*/  EHEA_NEQ ; 
 int /*<<< orphan*/  EHEA_PD_ID ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  adapter_list ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,...) ; 
 struct ehea_adapter* FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct platform_device*) ; 
 TYPE_2__* FUNC3 (struct ehea_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  ehea_interrupt_neq ; 
 int /*<<< orphan*/  ehea_neq_tasklet ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 
 int FUNC7 (struct ehea_adapter*) ; 
 int FUNC8 (struct ehea_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ehea_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct ehea_adapter*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC19(struct platform_device *dev)
{
	struct ehea_adapter *adapter;
	const u64 *adapter_handle;
	int ret;
	int i;

	ret = FUNC5();
	if (ret)
		return ret;

	if (!dev || !dev->dev.of_node) {
		FUNC16("Invalid ibmebus device probed\n");
		return -EINVAL;
	}

	adapter = FUNC1(&dev->dev, sizeof(*adapter), GFP_KERNEL);
	if (!adapter) {
		ret = -ENOMEM;
		FUNC0(&dev->dev, "no mem for ehea_adapter\n");
		goto out;
	}

	FUNC12(&adapter->list, &adapter_list);

	adapter->ofdev = dev;

	adapter_handle = FUNC14(dev->dev.of_node, "ibm,hea-handle",
					 NULL);
	if (adapter_handle)
		adapter->handle = *adapter_handle;

	if (!adapter->handle) {
		FUNC0(&dev->dev, "failed getting handle for adapter"
			" '%pOF'\n", dev->dev.of_node);
		ret = -ENODEV;
		goto out_free_ad;
	}

	adapter->pd = EHEA_PD_ID;

	FUNC15(dev, adapter);


	/* initialize adapter and ports */
	/* get adapter properties */
	ret = FUNC7(adapter);
	if (ret) {
		FUNC0(&dev->dev, "sense_adapter_attr failed: %d\n", ret);
		goto out_free_ad;
	}

	adapter->neq = FUNC3(adapter,
				      EHEA_NEQ, EHEA_MAX_ENTRIES_EQ, 1);
	if (!adapter->neq) {
		ret = -EIO;
		FUNC0(&dev->dev, "NEQ creation failed\n");
		goto out_free_ad;
	}

	FUNC18(&adapter->neq_tasklet, ehea_neq_tasklet,
		     (unsigned long)adapter);

	ret = FUNC2(dev);
	if (ret)
		goto out_kill_eq;

	ret = FUNC8(adapter);
	if (ret) {
		FUNC0(&dev->dev, "setup_ports failed\n");
		goto out_rem_dev_sysfs;
	}

	ret = FUNC11(adapter->neq->attr.ist1,
				  ehea_interrupt_neq, 0,
				  "ehea_neq", adapter);
	if (ret) {
		FUNC0(&dev->dev, "requesting NEQ IRQ failed\n");
		goto out_shutdown_ports;
	}

	/* Handle any events that might be pending. */
	FUNC17(&adapter->neq_tasklet);

	ret = 0;
	goto out;

out_shutdown_ports:
	for (i = 0; i < EHEA_MAX_PORTS; i++)
		if (adapter->port[i]) {
			FUNC9(adapter->port[i]);
			adapter->port[i] = NULL;
		}

out_rem_dev_sysfs:
	FUNC6(dev);

out_kill_eq:
	FUNC4(adapter->neq);

out_free_ad:
	FUNC13(&adapter->list);

out:
	FUNC10();

	return ret;
}