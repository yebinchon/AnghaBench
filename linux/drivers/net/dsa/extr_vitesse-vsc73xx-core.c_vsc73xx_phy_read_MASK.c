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
struct vsc73xx {int /*<<< orphan*/  dev; } ;
struct dsa_switch {struct vsc73xx* priv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  VSC73XX_BLOCK_MII ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct vsc73xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC5 (struct vsc73xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(struct dsa_switch *ds, int phy, int regnum)
{
	struct vsc73xx *vsc = ds->priv;
	u32 cmd;
	u32 val;
	int ret;

	/* Setting bit 26 means "read" */
	cmd = FUNC0(26) | (phy << 21) | (regnum << 16);
	ret = FUNC5(vsc, VSC73XX_BLOCK_MII, 0, 1, cmd);
	if (ret)
		return ret;
	FUNC3(2);
	ret = FUNC4(vsc, VSC73XX_BLOCK_MII, 0, 2, &val);
	if (ret)
		return ret;
	if (val & FUNC0(16)) {
		FUNC2(vsc->dev, "reading reg %02x from phy%d failed\n",
			regnum, phy);
		return -EIO;
	}
	val &= 0xFFFFU;

	FUNC1(vsc->dev, "read reg %02x from phy%d = %04x\n",
		regnum, phy, val);

	return val;
}