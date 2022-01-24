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
 int EIO ; 
 int /*<<< orphan*/  MTK_TIMEOUT ; 
 int /*<<< orphan*/  NFI_ADDRNOB ; 
 int /*<<< orphan*/  NFI_COLADDR ; 
 int /*<<< orphan*/  NFI_ROWADDR ; 
 scalar_t__ NFI_STA ; 
 int STA_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_nfc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_nfc*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mtk_nfc *nfc, int addr)
{
	struct device *dev = nfc->dev;
	u32 val;
	int ret;

	FUNC1(nfc, addr, NFI_COLADDR);
	FUNC1(nfc, 0, NFI_ROWADDR);
	FUNC2(nfc, 1, NFI_ADDRNOB);

	ret = FUNC3(nfc->regs + NFI_STA, val,
					!(val & STA_ADDR), 10, MTK_TIMEOUT);
	if (ret) {
		FUNC0(dev, "nfi core timed out entering address mode\n");
		return -EIO;
	}

	return 0;
}