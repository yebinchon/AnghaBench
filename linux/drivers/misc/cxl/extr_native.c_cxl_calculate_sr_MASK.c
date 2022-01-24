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
typedef  int u64 ;

/* Variables and functions */
 int CXL_PSL_SR_An_HV ; 
 int CXL_PSL_SR_An_MP ; 
 int CXL_PSL_SR_An_PR ; 
 int CXL_PSL_SR_An_R ; 
 int CXL_PSL_SR_An_SF ; 
 int CXL_PSL_SR_An_TC ; 
 int CXL_PSL_SR_An_XLAT_hpt ; 
 int CXL_PSL_SR_An_XLAT_ror ; 
 int LPCR_TC ; 
 int MSR_SF ; 
 int /*<<< orphan*/  SPRN_LPCR ; 
 int /*<<< orphan*/  TIF_32BIT ; 
 int /*<<< orphan*/  current ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u64 FUNC5(bool master, bool kernel, bool real_mode, bool p9)
{
	u64 sr = 0;

	FUNC3(sr);
	if (master)
		sr |= CXL_PSL_SR_An_MP;
	if (FUNC1(SPRN_LPCR) & LPCR_TC)
		sr |= CXL_PSL_SR_An_TC;

	if (kernel) {
		if (!real_mode)
			sr |= CXL_PSL_SR_An_R;
		sr |= (FUNC0() & MSR_SF) | CXL_PSL_SR_An_HV;
	} else {
		sr |= CXL_PSL_SR_An_PR | CXL_PSL_SR_An_R;
		if (FUNC2())
			sr |= CXL_PSL_SR_An_HV;
		else
			sr &= ~(CXL_PSL_SR_An_HV);
		if (!FUNC4(current, TIF_32BIT))
			sr |= CXL_PSL_SR_An_SF;
	}
	if (p9) {
		if (FUNC2())
			sr |= CXL_PSL_SR_An_XLAT_ror;
		else
			sr |= CXL_PSL_SR_An_XLAT_hpt;
	}
	return sr;
}