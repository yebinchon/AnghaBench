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
typedef  int u32 ;
struct mtk_nfc {scalar_t__ regs; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int CON_FIFO_FLUSH ; 
 int CON_NFI_RST ; 
 int MASTER_STA_MASK ; 
 int /*<<< orphan*/  MTK_RESET_TIMEOUT ; 
 int /*<<< orphan*/  NFI_CON ; 
 scalar_t__ NFI_MASTER_STA ; 
 int /*<<< orphan*/  NFI_STRDATA ; 
 int /*<<< orphan*/  STAR_DE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_nfc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mtk_nfc *nfc)
{
	struct device *dev = nfc->dev;
	u32 val;
	int ret;

	/* reset all registers and force the NFI master to terminate */
	FUNC1(nfc, CON_FIFO_FLUSH | CON_NFI_RST, NFI_CON);

	/* wait for the master to finish the last transaction */
	ret = FUNC3(nfc->regs + NFI_MASTER_STA, val,
				 !(val & MASTER_STA_MASK), 50,
				 MTK_RESET_TIMEOUT);
	if (ret)
		FUNC0(dev, "master active in reset [0x%x] = 0x%x\n",
			 NFI_MASTER_STA, val);

	/* ensure any status register affected by the NFI master is reset */
	FUNC1(nfc, CON_FIFO_FLUSH | CON_NFI_RST, NFI_CON);
	FUNC2(nfc, STAR_DE, NFI_STRDATA);
}