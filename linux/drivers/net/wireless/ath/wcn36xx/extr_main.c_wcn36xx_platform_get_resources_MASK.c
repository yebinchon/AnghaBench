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
struct wcn36xx {int is_pronto; void* ccu_base; int /*<<< orphan*/  rf_id; void* dxe_base; void* tx_rings_empty_state; int /*<<< orphan*/  tx_rings_empty_state_bit; void* tx_enable_state; int /*<<< orphan*/  tx_enable_state_bit; int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  tx_irq; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  RF_IRIS_WCN3620 ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (struct device_node*,char*) ; 
 struct device_node* FUNC4 (struct device_node*,char*) ; 
 void* FUNC5 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 struct device_node* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device_node*,char*,char*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC10 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(struct wcn36xx *wcn,
					  struct platform_device *pdev)
{
	struct device_node *mmio_node;
	struct device_node *iris_node;
	struct resource *res;
	int index;
	int ret;

	/* Set TX IRQ */
	res = FUNC9(pdev, IORESOURCE_IRQ, "tx");
	if (!res) {
		FUNC11("failed to get tx_irq\n");
		return -ENOENT;
	}
	wcn->tx_irq = res->start;

	/* Set RX IRQ */
	res = FUNC9(pdev, IORESOURCE_IRQ, "rx");
	if (!res) {
		FUNC11("failed to get rx_irq\n");
		return -ENOENT;
	}
	wcn->rx_irq = res->start;

	/* Acquire SMSM tx enable handle */
	wcn->tx_enable_state = FUNC10(&pdev->dev,
			"tx-enable", &wcn->tx_enable_state_bit);
	if (FUNC0(wcn->tx_enable_state)) {
		FUNC11("failed to get tx-enable state\n");
		return FUNC1(wcn->tx_enable_state);
	}

	/* Acquire SMSM tx rings empty handle */
	wcn->tx_rings_empty_state = FUNC10(&pdev->dev,
			"tx-rings-empty", &wcn->tx_rings_empty_state_bit);
	if (FUNC0(wcn->tx_rings_empty_state)) {
		FUNC11("failed to get tx-rings-empty state\n");
		return FUNC1(wcn->tx_rings_empty_state);
	}

	mmio_node = FUNC7(pdev->dev.parent->of_node, "qcom,mmio", 0);
	if (!mmio_node) {
		FUNC11("failed to acquire qcom,mmio reference\n");
		return -EINVAL;
	}

	wcn->is_pronto = !!FUNC3(mmio_node, "qcom,pronto");

	/* Map the CCU memory */
	index = FUNC8(mmio_node, "reg-names", "ccu");
	wcn->ccu_base = FUNC5(mmio_node, index);
	if (!wcn->ccu_base) {
		FUNC11("failed to map ccu memory\n");
		ret = -ENOMEM;
		goto put_mmio_node;
	}

	/* Map the DXE memory */
	index = FUNC8(mmio_node, "reg-names", "dxe");
	wcn->dxe_base = FUNC5(mmio_node, index);
	if (!wcn->dxe_base) {
		FUNC11("failed to map dxe memory\n");
		ret = -ENOMEM;
		goto unmap_ccu;
	}

	/* External RF module */
	iris_node = FUNC4(mmio_node, "iris");
	if (iris_node) {
		if (FUNC3(iris_node, "qcom,wcn3620"))
			wcn->rf_id = RF_IRIS_WCN3620;
		FUNC6(iris_node);
	}

	FUNC6(mmio_node);
	return 0;

unmap_ccu:
	FUNC2(wcn->ccu_base);
put_mmio_node:
	FUNC6(mmio_node);
	return ret;
}