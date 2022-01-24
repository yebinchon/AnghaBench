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
struct cx23885_dev {size_t board; int /*<<< orphan*/  lmmio; int /*<<< orphan*/ * i2c_bus; int /*<<< orphan*/  ts2; int /*<<< orphan*/  ts1; int /*<<< orphan*/  refcount; int /*<<< orphan*/  pci; } ;
struct TYPE_2__ {scalar_t__ porta; scalar_t__ portb; scalar_t__ portc; } ;

/* Variables and functions */
 scalar_t__ CX23885_ANALOG_VIDEO ; 
 scalar_t__ CX23885_MPEG_DVB ; 
 scalar_t__ CX23885_MPEG_ENCODER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_dev*) ; 
 TYPE_1__* cx23885_boards ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cx23885_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct cx23885_dev *dev)
{
	FUNC8(FUNC7(dev->pci, 0),
			   FUNC6(dev->pci, 0));

	if (!FUNC0(&dev->refcount))
		return;

	if (cx23885_boards[dev->board].porta == CX23885_ANALOG_VIDEO)
		FUNC4(dev);

	if (cx23885_boards[dev->board].portb == CX23885_MPEG_DVB)
		FUNC2(&dev->ts1);

	if (cx23885_boards[dev->board].portb == CX23885_MPEG_ENCODER)
		FUNC1(dev);

	if (cx23885_boards[dev->board].portc == CX23885_MPEG_DVB)
		FUNC2(&dev->ts2);

	if (cx23885_boards[dev->board].portc == CX23885_MPEG_ENCODER)
		FUNC1(dev);

	FUNC3(&dev->i2c_bus[2]);
	FUNC3(&dev->i2c_bus[1]);
	FUNC3(&dev->i2c_bus[0]);

	FUNC5(dev->lmmio);
}