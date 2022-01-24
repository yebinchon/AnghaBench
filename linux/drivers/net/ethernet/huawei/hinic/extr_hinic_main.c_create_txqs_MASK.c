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
struct net_device {int /*<<< orphan*/  dev; } ;
struct hinic_sq {int dummy; } ;
struct hinic_dev {int /*<<< orphan*/ * txqs; int /*<<< orphan*/  hwdev; struct net_device* netdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct hinic_sq* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct hinic_sq*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hinic_dev*,int /*<<< orphan*/ ,struct net_device*,char*) ; 

__attribute__((used)) static int FUNC7(struct hinic_dev *nic_dev)
{
	int err, i, j, num_txqs = FUNC4(nic_dev->hwdev);
	struct net_device *netdev = nic_dev->netdev;
	size_t txq_size;

	if (nic_dev->txqs)
		return -EINVAL;

	txq_size = num_txqs * sizeof(*nic_dev->txqs);
	nic_dev->txqs = FUNC1(&netdev->dev, txq_size, GFP_KERNEL);
	if (!nic_dev->txqs)
		return -ENOMEM;

	for (i = 0; i < num_txqs; i++) {
		struct hinic_sq *sq = FUNC3(nic_dev->hwdev, i);

		err = FUNC5(&nic_dev->txqs[i], sq, netdev);
		if (err) {
			FUNC6(nic_dev, drv, netdev,
				  "Failed to init Txq\n");
			goto err_init_txq;
		}
	}

	return 0;

err_init_txq:
	for (j = 0; j < i; j++)
		FUNC2(&nic_dev->txqs[j]);

	FUNC0(&netdev->dev, nic_dev->txqs);
	return err;
}