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
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEMWIN0_APERTURE ; 
 int /*<<< orphan*/  PCIE_MEM_ACCESS_BASE_WIN_A ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ WINDOW_SHIFT_X ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct adapter *adap, u32 memwin_base, u32 window)
{
	FUNC5(adap,
		     FUNC1(PCIE_MEM_ACCESS_BASE_WIN_A, window),
		     memwin_base | FUNC0(0) |
		     FUNC2(FUNC3(MEMWIN0_APERTURE) - WINDOW_SHIFT_X));
	FUNC4(adap,
		    FUNC1(PCIE_MEM_ACCESS_BASE_WIN_A, window));
}