#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hns3_nic_priv {TYPE_2__* ring_data; int /*<<< orphan*/ * dev; struct hnae3_handle* ae_handle; } ;
struct TYPE_4__ {int num_tqps; int /*<<< orphan*/ * tqp; } ;
struct hnae3_handle {TYPE_1__ kinfo; struct pci_dev* pdev; } ;
struct TYPE_5__ {struct TYPE_5__* ring; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct hns3_nic_priv*) ; 

__attribute__((used)) static int FUNC4(struct hns3_nic_priv *priv)
{
	struct hnae3_handle *h = priv->ae_handle;
	struct pci_dev *pdev = h->pdev;
	int i, ret;

	priv->ring_data =  FUNC2(&pdev->dev,
					FUNC0(h->kinfo.num_tqps,
						    sizeof(*priv->ring_data),
						    2),
					GFP_KERNEL);
	if (!priv->ring_data)
		return -ENOMEM;

	for (i = 0; i < h->kinfo.num_tqps; i++) {
		ret = FUNC3(h->kinfo.tqp[i], priv);
		if (ret)
			goto err;
	}

	return 0;
err:
	while (i--) {
		FUNC1(priv->dev, priv->ring_data[i].ring);
		FUNC1(priv->dev,
			   priv->ring_data[i + h->kinfo.num_tqps].ring);
	}

	FUNC1(&pdev->dev, priv->ring_data);
	priv->ring_data = NULL;
	return ret;
}