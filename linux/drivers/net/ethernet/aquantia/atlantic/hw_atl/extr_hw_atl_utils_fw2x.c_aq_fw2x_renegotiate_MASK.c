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
typedef  int /*<<< orphan*/  u32 ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTRL_FORCE_RECONNECT ; 
 int /*<<< orphan*/  HW_ATL_FW2X_MPI_CONTROL2_ADDR ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct aq_hw_s *self)
{
	u32 mpi_opts = FUNC1(self, HW_ATL_FW2X_MPI_CONTROL2_ADDR);

	mpi_opts |= FUNC0(CTRL_FORCE_RECONNECT);

	FUNC2(self, HW_ATL_FW2X_MPI_CONTROL2_ADDR, mpi_opts);

	return 0;
}