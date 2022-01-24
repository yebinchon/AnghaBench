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
struct twl6040 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int TWL6040_HSLDOENA ; 
 int TWL6040_LPLLENA ; 
 int TWL6040_LSLDOENA ; 
 int TWL6040_NCPENA ; 
 int TWL6040_OSCENA ; 
 int TWL6040_REFENA ; 
 int /*<<< orphan*/  TWL6040_REG_LDOCTL ; 
 int /*<<< orphan*/  TWL6040_REG_LPPLLCTL ; 
 int /*<<< orphan*/  TWL6040_REG_NCPCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct twl6040*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct twl6040 *twl6040)
{
	u8 ldoctl, ncpctl, lppllctl;
	int ret;

	/* enable high-side LDO, reference system and internal oscillator */
	ldoctl = TWL6040_HSLDOENA | TWL6040_REFENA | TWL6040_OSCENA;
	ret = FUNC1(twl6040, TWL6040_REG_LDOCTL, ldoctl);
	if (ret)
		return ret;
	FUNC2(10000, 10500);

	/* enable negative charge pump */
	ncpctl = TWL6040_NCPENA;
	ret = FUNC1(twl6040, TWL6040_REG_NCPCTL, ncpctl);
	if (ret)
		goto ncp_err;
	FUNC2(1000, 1500);

	/* enable low-side LDO */
	ldoctl |= TWL6040_LSLDOENA;
	ret = FUNC1(twl6040, TWL6040_REG_LDOCTL, ldoctl);
	if (ret)
		goto lsldo_err;
	FUNC2(1000, 1500);

	/* enable low-power PLL */
	lppllctl = TWL6040_LPLLENA;
	ret = FUNC1(twl6040, TWL6040_REG_LPPLLCTL, lppllctl);
	if (ret)
		goto lppll_err;
	FUNC2(5000, 5500);

	/* disable internal oscillator */
	ldoctl &= ~TWL6040_OSCENA;
	ret = FUNC1(twl6040, TWL6040_REG_LDOCTL, ldoctl);
	if (ret)
		goto osc_err;

	return 0;

osc_err:
	lppllctl &= ~TWL6040_LPLLENA;
	FUNC1(twl6040, TWL6040_REG_LPPLLCTL, lppllctl);
lppll_err:
	ldoctl &= ~TWL6040_LSLDOENA;
	FUNC1(twl6040, TWL6040_REG_LDOCTL, ldoctl);
lsldo_err:
	ncpctl &= ~TWL6040_NCPENA;
	FUNC1(twl6040, TWL6040_REG_NCPCTL, ncpctl);
ncp_err:
	ldoctl &= ~(TWL6040_HSLDOENA | TWL6040_REFENA | TWL6040_OSCENA);
	FUNC1(twl6040, TWL6040_REG_LDOCTL, ldoctl);

	FUNC0(twl6040->dev, "manual power-up failed\n");
	return ret;
}