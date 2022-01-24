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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  oq; int /*<<< orphan*/  iq; int /*<<< orphan*/  iq64B; } ;
struct octeon_device {TYPE_1__ io_qmask; } ;

/* Variables and functions */
 int /*<<< orphan*/  CN6XXX_SLI_PKT_INSTR_ENB ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_INSTR_SIZE ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_OUT_ENB ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct octeon_device *oct)
{
	u32 mask;

	mask = FUNC0(oct, CN6XXX_SLI_PKT_INSTR_SIZE);
	mask |= oct->io_qmask.iq64B;
	FUNC1(oct, CN6XXX_SLI_PKT_INSTR_SIZE, mask);

	mask = FUNC0(oct, CN6XXX_SLI_PKT_INSTR_ENB);
	mask |= oct->io_qmask.iq;
	FUNC1(oct, CN6XXX_SLI_PKT_INSTR_ENB, mask);

	mask = FUNC0(oct, CN6XXX_SLI_PKT_OUT_ENB);
	mask |= oct->io_qmask.oq;
	FUNC1(oct, CN6XXX_SLI_PKT_OUT_ENB, mask);

	return 0;
}