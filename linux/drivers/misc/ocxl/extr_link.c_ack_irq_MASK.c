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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {int /*<<< orphan*/  dar; int /*<<< orphan*/  dsisr; int /*<<< orphan*/  pe; } ;
struct spa {int /*<<< orphan*/  reg_tfc; TYPE_1__ xsl_fault; int /*<<< orphan*/  spa_mem; } ;
typedef  enum xsl_response { ____Placeholder_xsl_response } xsl_response ;

/* Variables and functions */
 int ADDRESS_ERROR ; 
 scalar_t__ FUNC0 (int) ; 
 int RESTART ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct spa *spa, enum xsl_response r)
{
	u64 reg = 0;

	/* continue is not supported */
	if (r == RESTART)
		reg = FUNC0(31);
	else if (r == ADDRESS_ERROR)
		reg = FUNC0(30);
	else
		FUNC1(1, "Invalid irq response %d\n", r);

	if (reg) {
		FUNC3(spa->spa_mem, spa->xsl_fault.pe,
				spa->xsl_fault.dsisr, spa->xsl_fault.dar, reg);
		FUNC2(spa->reg_tfc, reg);
	}
}