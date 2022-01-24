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
struct enetc_si {int errata; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int ENETC_ERR_UCMCSWP ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int UC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct enetc_si *si, int si_idx, int type)
{
	bool err = si->errata & ENETC_ERR_UCMCSWP;

	if (type == UC) {
		FUNC4(&si->hw, FUNC2(si_idx, err), 0);
		FUNC4(&si->hw, FUNC3(si_idx), 0);
	} else { /* MC */
		FUNC4(&si->hw, FUNC0(si_idx, err), 0);
		FUNC4(&si->hw, FUNC1(si_idx), 0);
	}
}