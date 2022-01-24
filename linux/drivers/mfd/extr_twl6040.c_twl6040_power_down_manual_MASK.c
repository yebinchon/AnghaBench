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
struct twl6040 {int dummy; } ;

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
 int FUNC0 (struct twl6040*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct twl6040*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct twl6040 *twl6040)
{
	u8 ncpctl, ldoctl, lppllctl;

	ncpctl = FUNC0(twl6040, TWL6040_REG_NCPCTL);
	ldoctl = FUNC0(twl6040, TWL6040_REG_LDOCTL);
	lppllctl = FUNC0(twl6040, TWL6040_REG_LPPLLCTL);

	/* enable internal oscillator */
	ldoctl |= TWL6040_OSCENA;
	FUNC1(twl6040, TWL6040_REG_LDOCTL, ldoctl);
	FUNC2(1000, 1500);

	/* disable low-power PLL */
	lppllctl &= ~TWL6040_LPLLENA;
	FUNC1(twl6040, TWL6040_REG_LPPLLCTL, lppllctl);

	/* disable low-side LDO */
	ldoctl &= ~TWL6040_LSLDOENA;
	FUNC1(twl6040, TWL6040_REG_LDOCTL, ldoctl);

	/* disable negative charge pump */
	ncpctl &= ~TWL6040_NCPENA;
	FUNC1(twl6040, TWL6040_REG_NCPCTL, ncpctl);

	/* disable high-side LDO, reference system and internal oscillator */
	ldoctl &= ~(TWL6040_HSLDOENA | TWL6040_REFENA | TWL6040_OSCENA);
	FUNC1(twl6040, TWL6040_REG_LDOCTL, ldoctl);
}