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
typedef  int u8 ;
struct pcmcia_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CISREG_CCSR ; 
 int /*<<< orphan*/  CISREG_COR ; 
 int COR_SOFT_RESET ; 
 int ENODEV ; 
 int HCR_IDLE ; 
 int HCR_MEM16 ; 
 int HCR_RUN ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_device*) ; 
 int FUNC1 (struct pcmcia_device*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct pcmcia_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct pcmcia_device *link, int idle)
{
	int ret;
	u8 save_cor;
	u8 ccsr;

	/* Doing it if hardware is gone is guaranteed crash */
	if (!FUNC0(link))
		return -ENODEV;

	/* Save original COR value */
	ret = FUNC1(link, CISREG_COR, &save_cor);
	if (ret)
		goto failed;

	/* Soft-Reset card */
	ret = FUNC2(link, CISREG_COR,
				(save_cor | COR_SOFT_RESET));
	if (ret)
		goto failed;
	FUNC3(1000);

	/* Read CCSR */
	ret = FUNC1(link, CISREG_CCSR, &ccsr);
	if (ret)
		goto failed;

	/*
	 * Start or stop the firmware.  Memory width bit should be
	 * preserved from the value we've just read.
	 */
	ccsr = (idle ? HCR_IDLE : HCR_RUN) | (ccsr & HCR_MEM16);
	ret = FUNC2(link, CISREG_CCSR, ccsr);
	if (ret)
		goto failed;
	FUNC3(1000);

	/* Restore original COR configuration index */
	ret = FUNC2(link, CISREG_COR,
				(save_cor & ~COR_SOFT_RESET));
	if (ret)
		goto failed;
	FUNC3(1000);
	return 0;

failed:
	return -ENODEV;
}