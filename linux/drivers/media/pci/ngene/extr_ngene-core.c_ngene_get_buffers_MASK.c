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
struct ngene {int /*<<< orphan*/  iomem; int /*<<< orphan*/  pci_dev; void* vin_buf; int /*<<< orphan*/  vin_rbuf; TYPE_1__* card_info; void* ain_buf; int /*<<< orphan*/  ain_rbuf; void* tsin_buf; int /*<<< orphan*/  tsin_rbuf; void* tsout_buf; int /*<<< orphan*/  tsout_rbuf; } ;
struct TYPE_2__ {int* io_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIN_BUF_SIZE ; 
 scalar_t__ FUNC0 (struct ngene*) ; 
 int ENOMEM ; 
 int NGENE_IO_AIN ; 
 int NGENE_IO_HDTV ; 
 int NGENE_IO_TSIN ; 
 int NGENE_IO_TSOUT ; 
 int /*<<< orphan*/  TSIN_BUF_SIZE ; 
 int /*<<< orphan*/  TSOUT_BUF_SIZE ; 
 int /*<<< orphan*/  VIN_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ngene *dev)
{
	if (FUNC0(dev))
		return -ENOMEM;
	if (dev->card_info->io_type[4] & NGENE_IO_TSOUT) {
		dev->tsout_buf = FUNC5(TSOUT_BUF_SIZE);
		if (!dev->tsout_buf)
			return -ENOMEM;
		FUNC1(&dev->tsout_rbuf,
				    dev->tsout_buf, TSOUT_BUF_SIZE);
	}
	if (dev->card_info->io_type[2]&NGENE_IO_TSIN) {
		dev->tsin_buf = FUNC5(TSIN_BUF_SIZE);
		if (!dev->tsin_buf)
			return -ENOMEM;
		FUNC1(&dev->tsin_rbuf,
				    dev->tsin_buf, TSIN_BUF_SIZE);
	}
	if (dev->card_info->io_type[2] & NGENE_IO_AIN) {
		dev->ain_buf = FUNC5(AIN_BUF_SIZE);
		if (!dev->ain_buf)
			return -ENOMEM;
		FUNC1(&dev->ain_rbuf, dev->ain_buf, AIN_BUF_SIZE);
	}
	if (dev->card_info->io_type[0] & NGENE_IO_HDTV) {
		dev->vin_buf = FUNC5(VIN_BUF_SIZE);
		if (!dev->vin_buf)
			return -ENOMEM;
		FUNC1(&dev->vin_rbuf, dev->vin_buf, VIN_BUF_SIZE);
	}
	dev->iomem = FUNC2(FUNC4(dev->pci_dev, 0),
			     FUNC3(dev->pci_dev, 0));
	if (!dev->iomem)
		return -ENOMEM;

	return 0;
}