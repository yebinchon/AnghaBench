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
typedef  int u16 ;
struct saa7134_go7007 {struct saa7134_dev* dev; } ;
struct saa7134_dev {int dummy; } ;
struct go7007 {struct saa7134_go7007* hpi_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPI_ADDR_INTR_STATUS ; 
 int /*<<< orphan*/  HPI_ADDR_INTR_WR_INDEX ; 
 int /*<<< orphan*/  HPI_ADDR_INTR_WR_PARAM ; 
 int /*<<< orphan*/  FUNC0 (struct saa7134_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(struct go7007 *go, int addr, int data)
{
	struct saa7134_go7007 *saa = go->hpi_context;
	struct saa7134_dev *dev = saa->dev;
	int i;
	u16 status_reg;

#ifdef GO7007_HPI_DEBUG
	pr_debug("saa7134-go7007: WriteInterrupt: %04x %04x\n", addr, data);
#endif

	for (i = 0; i < 100; ++i) {
		FUNC0(dev, HPI_ADDR_INTR_STATUS, &status_reg);
		if (!(status_reg & 0x0010))
			break;
		FUNC2(10);
	}
	if (i == 100) {
		FUNC4("saa7134-go7007: device is hung, status reg = 0x%04x\n",
			status_reg);
		return -1;
	}
	FUNC1(dev, HPI_ADDR_INTR_WR_PARAM, data);
	FUNC1(dev, HPI_ADDR_INTR_WR_INDEX, addr);

	return 0;
}