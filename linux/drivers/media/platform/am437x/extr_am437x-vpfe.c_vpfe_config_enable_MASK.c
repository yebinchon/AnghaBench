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
struct vpfe_ccdc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VPFE_CONFIG ; 
 unsigned int VPFE_CONFIG_EN_ENABLE ; 
 unsigned int VPFE_CONFIG_EN_SHIFT ; 
 unsigned int FUNC0 (struct vpfe_ccdc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vpfe_ccdc*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vpfe_ccdc *ccdc, int flag)
{
	unsigned int cfg;

	if (!flag) {
		cfg = FUNC0(ccdc, VPFE_CONFIG);
		cfg &= ~(VPFE_CONFIG_EN_ENABLE << VPFE_CONFIG_EN_SHIFT);
	} else {
		cfg = VPFE_CONFIG_EN_ENABLE << VPFE_CONFIG_EN_SHIFT;
	}

	FUNC1(ccdc, cfg, VPFE_CONFIG);
}