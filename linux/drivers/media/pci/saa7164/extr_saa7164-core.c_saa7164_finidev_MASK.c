#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct saa7164_dev {size_t board; int msi; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  devlist; int /*<<< orphan*/ * i2c_bus; TYPE_1__* ports; scalar_t__ firmwareloaded; int /*<<< orphan*/ * kthread; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct TYPE_7__ {scalar_t__ porta; scalar_t__ portb; scalar_t__ portc; scalar_t__ portd; scalar_t__ porte; scalar_t__ portf; } ;
struct TYPE_6__ {int /*<<< orphan*/  poll_interval; int /*<<< orphan*/  read_interval; int /*<<< orphan*/  irq_svc_interval; int /*<<< orphan*/  svc_interval; int /*<<< orphan*/  irq_interval; } ;

/* Variables and functions */
 size_t SAA7164_BOARD_UNKNOWN ; 
 scalar_t__ SAA7164_MPEG_DVB ; 
 scalar_t__ SAA7164_MPEG_ENCODER ; 
 scalar_t__ SAA7164_MPEG_VBI ; 
 size_t SAA7164_PORT_ENC1 ; 
 size_t SAA7164_PORT_ENC2 ; 
 size_t SAA7164_PORT_TS1 ; 
 size_t SAA7164_PORT_TS2 ; 
 size_t SAA7164_PORT_VBI1 ; 
 size_t SAA7164_PORT_VBI2 ; 
 int /*<<< orphan*/  devlist ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct saa7164_dev*) ; 
 scalar_t__ fw_debug ; 
 int /*<<< orphan*/  FUNC1 (struct saa7164_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct saa7164_dev* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct saa7164_dev*,int) ; 
 TYPE_5__* saa7164_boards ; 
 int /*<<< orphan*/  FUNC10 (struct saa7164_dev*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct saa7164_dev*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(struct pci_dev *pci_dev)
{
	struct saa7164_dev *dev = FUNC8(pci_dev);

	if (dev->board != SAA7164_BOARD_UNKNOWN) {
		if (fw_debug && dev->kthread) {
			FUNC2(dev->kthread);
			dev->kthread = NULL;
		}
		if (dev->firmwareloaded)
			FUNC9(dev, 0x00);
	}

	FUNC13(&dev->ports[SAA7164_PORT_ENC1],
		&dev->ports[SAA7164_PORT_ENC1].irq_interval);
	FUNC13(&dev->ports[SAA7164_PORT_ENC1],
		&dev->ports[SAA7164_PORT_ENC1].svc_interval);
	FUNC13(&dev->ports[SAA7164_PORT_ENC1],
		&dev->ports[SAA7164_PORT_ENC1].irq_svc_interval);
	FUNC13(&dev->ports[SAA7164_PORT_ENC1],
		&dev->ports[SAA7164_PORT_ENC1].read_interval);
	FUNC13(&dev->ports[SAA7164_PORT_ENC1],
		&dev->ports[SAA7164_PORT_ENC1].poll_interval);
	FUNC13(&dev->ports[SAA7164_PORT_VBI1],
		&dev->ports[SAA7164_PORT_VBI1].read_interval);
	FUNC13(&dev->ports[SAA7164_PORT_VBI2],
		&dev->ports[SAA7164_PORT_VBI2].poll_interval);

	FUNC15(dev);

	if (saa7164_boards[dev->board].porta == SAA7164_MPEG_DVB)
		FUNC11(&dev->ports[SAA7164_PORT_TS1]);

	if (saa7164_boards[dev->board].portb == SAA7164_MPEG_DVB)
		FUNC11(&dev->ports[SAA7164_PORT_TS2]);

	if (saa7164_boards[dev->board].portc == SAA7164_MPEG_ENCODER)
		FUNC12(&dev->ports[SAA7164_PORT_ENC1]);

	if (saa7164_boards[dev->board].portd == SAA7164_MPEG_ENCODER)
		FUNC12(&dev->ports[SAA7164_PORT_ENC2]);

	if (saa7164_boards[dev->board].porte == SAA7164_MPEG_VBI)
		FUNC16(&dev->ports[SAA7164_PORT_VBI1]);

	if (saa7164_boards[dev->board].portf == SAA7164_MPEG_VBI)
		FUNC16(&dev->ports[SAA7164_PORT_VBI2]);

	FUNC14(&dev->i2c_bus[0]);
	FUNC14(&dev->i2c_bus[1]);
	FUNC14(&dev->i2c_bus[2]);

	/* unregister stuff */
	FUNC0(pci_dev->irq, dev);

	if (dev->msi) {
		FUNC7(pci_dev);
		dev->msi = false;
	}

	FUNC6(pci_dev);

	FUNC4(&devlist);
	FUNC3(&dev->devlist);
	FUNC5(&devlist);

	FUNC10(dev);
	FUNC17(&dev->v4l2_dev);
	FUNC1(dev);
}