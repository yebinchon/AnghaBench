#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct serdev_device {TYPE_1__ dev; } ;
struct qcauart {int /*<<< orphan*/  tx_work; struct net_device* net_dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  frm_handle; struct serdev_device* serdev; } ;
struct net_device {int dev_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,TYPE_1__*) ; 
 struct net_device* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 struct qcauart* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  qca_serdev_ops ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  qcauart_transmit ; 
 int FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct serdev_device*) ; 
 int FUNC20 (struct serdev_device*) ; 
 int FUNC21 (struct serdev_device*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct serdev_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct serdev_device*,struct qcauart*) ; 
 int /*<<< orphan*/  FUNC24 (struct serdev_device*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC26(struct serdev_device *serdev)
{
	struct net_device *qcauart_dev = FUNC3(sizeof(struct qcauart));
	struct qcauart *qca;
	const char *mac;
	u32 speed = 115200;
	int ret;

	if (!qcauart_dev)
		return -ENOMEM;

	FUNC17(qcauart_dev);
	FUNC2(qcauart_dev, &serdev->dev);

	qca = FUNC11(qcauart_dev);
	if (!qca) {
		FUNC15("qca_uart: Fail to retrieve private structure\n");
		ret = -ENOMEM;
		goto free;
	}
	qca->net_dev = qcauart_dev;
	qca->serdev = serdev;
	FUNC16(&qca->frm_handle);

	FUNC25(&qca->lock);
	FUNC0(&qca->tx_work, qcauart_transmit);

	FUNC14(serdev->dev.of_node, "current-speed", &speed);

	mac = FUNC13(serdev->dev.of_node);

	if (!FUNC1(mac))
		FUNC8(qca->net_dev->dev_addr, mac);

	if (!FUNC10(qca->net_dev->dev_addr)) {
		FUNC7(qca->net_dev);
		FUNC6(&serdev->dev, "Using random MAC address: %pM\n",
			 qca->net_dev->dev_addr);
	}

	FUNC12(qca->net_dev);
	FUNC23(serdev, qca);
	FUNC22(serdev, &qca_serdev_ops);

	ret = FUNC20(serdev);
	if (ret) {
		FUNC5(&serdev->dev, "Unable to open device %s\n",
			qcauart_dev->name);
		goto free;
	}

	speed = FUNC21(serdev, speed);
	FUNC6(&serdev->dev, "Using baudrate: %u\n", speed);

	FUNC24(serdev, false);

	ret = FUNC18(qcauart_dev);
	if (ret) {
		FUNC5(&serdev->dev, "Unable to register net device %s\n",
			qcauart_dev->name);
		FUNC19(serdev);
		FUNC4(&qca->tx_work);
		goto free;
	}

	return 0;

free:
	FUNC9(qcauart_dev);
	return ret;
}