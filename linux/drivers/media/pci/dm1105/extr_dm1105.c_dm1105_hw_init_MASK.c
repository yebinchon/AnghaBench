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
struct dm1105_dev {int dummy; } ;

/* Variables and functions */
 int DM1105_DMA_BYTES ; 
 int /*<<< orphan*/  DM1105_DTALENTH ; 
 int /*<<< orphan*/  DM1105_HOST_CTR ; 
 int /*<<< orphan*/  DM1105_INTCNT ; 
 int /*<<< orphan*/  DM1105_IRCTR ; 
 int /*<<< orphan*/  DM1105_IRMODE ; 
 int DM1105_IR_EN ; 
 int /*<<< orphan*/  DM1105_RLEN ; 
 int /*<<< orphan*/  DM1105_SYSTEMCODE ; 
 int DM1105_SYS_CHK ; 
 int /*<<< orphan*/  DM1105_TSCTR ; 
 int /*<<< orphan*/  FUNC0 (struct dm1105_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm1105_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm1105_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct dm1105_dev *dev)
{
	FUNC0(dev);

	FUNC3(DM1105_HOST_CTR, 0);

	/*DATALEN 188,*/
	FUNC3(DM1105_DTALENTH, 188);
	/*TS_STRT TS_VALP MSBFIRST TS_MODE ALPAS TSPES*/
	FUNC5(DM1105_TSCTR, 0xc10a);

	/* map DMA and set address */
	FUNC1(dev);
	FUNC2(dev);
	/* big buffer */
	FUNC4(DM1105_RLEN, 5 * DM1105_DMA_BYTES);
	FUNC3(DM1105_INTCNT, 47);

	/* IR NEC mode enable */
	FUNC3(DM1105_IRCTR, (DM1105_IR_EN | DM1105_SYS_CHK));
	FUNC3(DM1105_IRMODE, 0);
	FUNC5(DM1105_SYSTEMCODE, 0);

	return 0;
}