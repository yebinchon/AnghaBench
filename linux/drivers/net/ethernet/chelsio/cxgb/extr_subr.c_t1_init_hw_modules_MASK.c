#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct board_info {int /*<<< orphan*/  clock_core; int /*<<< orphan*/  espi_nports; int /*<<< orphan*/  chip_mac; int /*<<< orphan*/  clock_mc4; } ;
struct TYPE_5__ {int /*<<< orphan*/  sge; int /*<<< orphan*/  tp; } ;
struct TYPE_6__ {TYPE_1__ params; int /*<<< orphan*/  sge; int /*<<< orphan*/  tp; scalar_t__ espi; scalar_t__ regs; } ;
typedef  TYPE_2__ adapter_t ;

/* Variables and functions */
 scalar_t__ A_MC4_CFG ; 
 scalar_t__ A_MC5_CONFIG ; 
 int EIO ; 
 int F_MC4_SLOW ; 
 int F_M_BUS_ENABLE ; 
 int F_READY ; 
 int F_TCAM_RESET ; 
 struct board_info* FUNC0 (TYPE_2__*) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

int FUNC6(adapter_t *adapter)
{
	int err = -EIO;
	const struct board_info *bi = FUNC0(adapter);

	if (!bi->clock_mc4) {
		u32 val = FUNC1(adapter->regs + A_MC4_CFG);

		FUNC5(val | F_READY | F_MC4_SLOW, adapter->regs + A_MC4_CFG);
		FUNC5(F_M_BUS_ENABLE | F_TCAM_RESET,
		       adapter->regs + A_MC5_CONFIG);
	}

	if (adapter->espi && FUNC2(adapter->espi, bi->chip_mac,
					  bi->espi_nports))
		goto out_err;

	if (FUNC4(adapter->tp, &adapter->params.tp, bi->clock_core))
		goto out_err;

	err = FUNC3(adapter->sge, &adapter->params.sge);
	if (err)
		goto out_err;

	err = 0;
out_err:
	return err;
}