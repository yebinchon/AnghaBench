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
typedef  int u8 ;
typedef  int u16 ;
struct tw5864_dev {TYPE_1__* pci; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int TW5864_ENABLE ; 
 int /*<<< orphan*/  TW5864_IND_CTL ; 
 int /*<<< orphan*/  TW5864_IND_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

u8 FUNC4(struct tw5864_dev *dev, u16 addr)
{
	int retries = 30000;

	while (FUNC2(TW5864_IND_CTL) & FUNC0(31) && --retries)
		;
	if (!retries)
		FUNC1(&dev->pci->dev,
			"tw_indir_readl() retries exhausted before reading\n");

	FUNC3(TW5864_IND_CTL, addr << 2 | TW5864_ENABLE);

	retries = 30000;
	while (FUNC2(TW5864_IND_CTL) & FUNC0(31) && --retries)
		;
	if (!retries)
		FUNC1(&dev->pci->dev,
			"tw_indir_readl() retries exhausted at reading\n");

	return FUNC2(TW5864_IND_DATA);
}