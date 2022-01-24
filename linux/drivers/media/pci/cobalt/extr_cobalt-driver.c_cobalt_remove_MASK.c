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
struct v4l2_subdev {int dummy; } ;
struct v4l2_device {int dummy; } ;
struct pci_dev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cobalt {int /*<<< orphan*/  irq_work_queues; int /*<<< orphan*/  pci_dev; TYPE_1__* streams; } ;
struct TYPE_2__ {struct v4l2_subdev* sd; } ;

/* Variables and functions */
 int COBALT_NUM_ADAPTERS ; 
 int /*<<< orphan*/  COBALT_SYS_CTRL_HSMA_TX_ENABLE_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct cobalt*) ; 
 int /*<<< orphan*/  FUNC1 (struct cobalt*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct cobalt*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct cobalt*) ; 
 int /*<<< orphan*/  FUNC5 (struct cobalt*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct cobalt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cobalt*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC11 (struct cobalt*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct v4l2_device* FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 struct cobalt* FUNC15 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC18 (struct v4l2_subdev*) ; 

__attribute__((used)) static void FUNC19(struct pci_dev *pci_dev)
{
	struct v4l2_device *v4l2_dev = FUNC13(pci_dev);
	struct cobalt *cobalt = FUNC15(v4l2_dev);
	int i;

	FUNC0(cobalt);
	FUNC7(cobalt, false);
	FUNC9(cobalt->irq_work_queues);
	FUNC4(cobalt);
	for (i = 0; i < COBALT_NUM_ADAPTERS; i++) {
		struct v4l2_subdev *sd = cobalt->streams[i].sd;
		struct i2c_client *client;

		if (sd == NULL)
			continue;
		client = FUNC18(sd);
		FUNC17(sd);
		FUNC10(client);
	}
	FUNC2(cobalt);
	FUNC1(cobalt, pci_dev);
	FUNC6(cobalt, COBALT_SYS_CTRL_HSMA_TX_ENABLE_BIT, 0);
	FUNC5(cobalt, pci_dev);
	FUNC14(cobalt->pci_dev);
	FUNC12(cobalt->pci_dev);
	FUNC8(cobalt->irq_work_queues);

	FUNC3("removed cobalt card\n");

	FUNC16(v4l2_dev);
	FUNC11(cobalt);
}