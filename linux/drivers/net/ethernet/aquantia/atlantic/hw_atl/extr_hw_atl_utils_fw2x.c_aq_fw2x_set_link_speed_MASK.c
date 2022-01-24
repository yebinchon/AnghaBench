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
 int /*<<< orphan*/  HW_ATL_FW2X_MPI_CONTROL_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct aq_hw_s *self, u32 speed)
{
	u32 val = FUNC1(speed);

	FUNC0(self, HW_ATL_FW2X_MPI_CONTROL_ADDR, val);

	return 0;
}