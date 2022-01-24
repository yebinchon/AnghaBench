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
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; TYPE_1__ params; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
#define  CHELSIO_T4 130 
#define  CHELSIO_T5 129 
#define  CHELSIO_T6 128 
 unsigned int T4_REGMAP_SIZE ; 
 unsigned int T5_REGMAP_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 

unsigned int FUNC2(struct adapter *adapter)
{
	unsigned int chip_version = FUNC0(adapter->params.chip);

	switch (chip_version) {
	case CHELSIO_T4:
		return T4_REGMAP_SIZE;

	case CHELSIO_T5:
	case CHELSIO_T6:
		return T5_REGMAP_SIZE;
	}

	FUNC1(adapter->pdev_dev,
		"Unsupported chip version %d\n", chip_version);
	return 0;
}