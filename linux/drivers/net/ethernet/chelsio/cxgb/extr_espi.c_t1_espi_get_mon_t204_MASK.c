#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct peespi {int misc_ctrl; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  nports; } ;
struct TYPE_5__ {scalar_t__ regs; TYPE_1__ params; struct peespi* espi; } ;
typedef  TYPE_2__ adapter_t ;

/* Variables and functions */
 scalar_t__ A_ESPI_MISC_CONTROL ; 
 scalar_t__ A_ESPI_SCH_TOKEN3 ; 
 int F_MONITORED_DIRECTION ; 
 int MON_MASK ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

int FUNC6(adapter_t *adapter, u32 *valp, u8 wait)
{
	struct peespi *espi = adapter->espi;
	u8 i, nport = (u8)adapter->params.nports;

	if (!wait) {
		if (!FUNC3(&espi->lock))
			return -1;
	} else
		FUNC2(&espi->lock);

	if ((espi->misc_ctrl & MON_MASK) != F_MONITORED_DIRECTION) {
		espi->misc_ctrl = (espi->misc_ctrl & ~MON_MASK) |
					F_MONITORED_DIRECTION;
		FUNC5(espi->misc_ctrl, adapter->regs + A_ESPI_MISC_CONTROL);
	}
	for (i = 0 ; i < nport; i++, valp++) {
		if (i) {
			FUNC5(espi->misc_ctrl | FUNC0(i),
			       adapter->regs + A_ESPI_MISC_CONTROL);
		}
		*valp = FUNC1(adapter->regs + A_ESPI_SCH_TOKEN3);
	}

	FUNC5(espi->misc_ctrl, adapter->regs + A_ESPI_MISC_CONTROL);
	FUNC4(&espi->lock);
	return 0;
}