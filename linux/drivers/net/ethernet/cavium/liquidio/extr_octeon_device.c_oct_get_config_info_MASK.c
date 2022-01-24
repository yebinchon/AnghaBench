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
typedef  int /*<<< orphan*/  u16 ;
struct octeon_device {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* FUNC0 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct octeon_device*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

void *FUNC3(struct octeon_device *oct, u16 card_type)
{
	void *conf = NULL;

	conf = FUNC0(oct, card_type);
	if (!conf)
		return NULL;

	if (FUNC1(oct, conf)) {
		FUNC2(&oct->pci_dev->dev, "Configuration verification failed\n");
		return NULL;
	}

	return conf;
}