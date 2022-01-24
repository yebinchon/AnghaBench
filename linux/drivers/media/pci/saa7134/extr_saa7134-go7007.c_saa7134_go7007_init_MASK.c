#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct v4l2_subdev {int /*<<< orphan*/  name; } ;
struct saa7134_go7007 {int /*<<< orphan*/ * bottom; int /*<<< orphan*/ * top; int /*<<< orphan*/  status; int /*<<< orphan*/  vdev; int /*<<< orphan*/  v4l2_dev; TYPE_1__* board_info; struct v4l2_subdev sd; struct saa7134_dev* dev; struct saa7134_go7007* hpi_context; int /*<<< orphan*/ * hpi_ops; int /*<<< orphan*/  name; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  board_id; } ;
struct saa7134_dev {size_t board; int /*<<< orphan*/ * empress_dev; TYPE_3__* pci; } ;
struct go7007 {int /*<<< orphan*/ * bottom; int /*<<< orphan*/ * top; int /*<<< orphan*/  status; int /*<<< orphan*/  vdev; int /*<<< orphan*/  v4l2_dev; TYPE_1__* board_info; struct v4l2_subdev sd; struct saa7134_dev* dev; struct go7007* hpi_context; int /*<<< orphan*/ * hpi_ops; int /*<<< orphan*/  name; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  board_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {char* name; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  num_i2c_devs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GO7007_BOARDID_PCI_VOYAGER ; 
 int GO7007_BOARD_USE_ONBOARD_I2C ; 
 int /*<<< orphan*/  STATUS_ONLINE ; 
 int /*<<< orphan*/  board_voyager ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct saa7134_go7007* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct saa7134_go7007*,int) ; 
 scalar_t__ FUNC4 (struct saa7134_go7007*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7134_go7007*) ; 
 struct saa7134_go7007* FUNC6 (int,int /*<<< orphan*/ ) ; 
 char* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_2__* saa7134_boards ; 
 int /*<<< orphan*/  saa7134_go7007_hpi_ops ; 
 int /*<<< orphan*/  saa7134_go7007_sd_ops ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC13 (struct v4l2_subdev*,struct saa7134_go7007*) ; 
 int /*<<< orphan*/  FUNC14 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct saa7134_dev *dev)
{
	struct go7007 *go;
	struct saa7134_go7007 *saa;
	struct v4l2_subdev *sd;

	FUNC8("saa7134-go7007: probing new SAA713X board\n");

	go = FUNC2(&board_voyager, &dev->pci->dev);
	if (go == NULL)
		return -ENOMEM;

	saa = FUNC6(sizeof(struct saa7134_go7007), GFP_KERNEL);
	if (saa == NULL) {
		FUNC5(go);
		return -ENOMEM;
	}

	go->board_id = GO7007_BOARDID_PCI_VOYAGER;
	FUNC10(go->bus_info, sizeof(go->bus_info), "PCI:%s", FUNC7(dev->pci));
	FUNC11(go->name, saa7134_boards[dev->board].name, sizeof(go->name));
	go->hpi_ops = &saa7134_go7007_hpi_ops;
	go->hpi_context = saa;
	saa->dev = dev;

	/* Init the subdevice interface */
	sd = &saa->sd;
	FUNC14(sd, &saa7134_go7007_sd_ops);
	FUNC13(sd, saa);
	FUNC11(sd->name, "saa7134-go7007", sizeof(sd->name));

	/* Allocate a couple pages for receiving the compressed stream */
	saa->top = (u8 *)FUNC1(GFP_KERNEL);
	if (!saa->top)
		goto allocfail;
	saa->bottom = (u8 *)FUNC1(GFP_KERNEL);
	if (!saa->bottom)
		goto allocfail;

	/* Boot the GO7007 */
	if (FUNC3(go, go->board_info->flags &
					GO7007_BOARD_USE_ONBOARD_I2C) < 0)
		goto allocfail;

	/* Do any final GO7007 initialization, then register the
	 * V4L2 and ALSA interfaces */
	if (FUNC4(go, go->board_info->num_i2c_devs) < 0)
		goto allocfail;

	/* Register the subdevice interface with the go7007 device */
	if (FUNC12(&go->v4l2_dev, sd) < 0)
		FUNC9("saa7134-go7007: register subdev failed\n");

	dev->empress_dev = &go->vdev;

	go->status = STATUS_ONLINE;
	return 0;

allocfail:
	if (saa->top)
		FUNC0((unsigned long)saa->top);
	if (saa->bottom)
		FUNC0((unsigned long)saa->bottom);
	FUNC5(saa);
	FUNC5(go);
	return -ENOMEM;
}