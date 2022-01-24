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
union eth_table_entry {int /*<<< orphan*/  control; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  u64 ;
struct nfp_nsp {int dummy; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  NSP_ETH_CTRL_ENABLED ; 
 int FUNC3 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nfp_nsp*) ; 
 struct nfp_nsp* FUNC7 (struct nfp_cpp*,unsigned int) ; 
 union eth_table_entry* FUNC8 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfp_nsp*,int) ; 

int FUNC10(struct nfp_cpp *cpp, unsigned int idx, bool enable)
{
	union eth_table_entry *entries;
	struct nfp_nsp *nsp;
	u64 reg;

	nsp = FUNC7(cpp, idx);
	if (FUNC2(nsp))
		return FUNC3(nsp);

	entries = FUNC8(nsp);

	/* Check if we are already in requested state */
	reg = FUNC5(entries[idx].state);
	if (enable != FUNC0(NSP_ETH_CTRL_ENABLED, reg)) {
		reg = FUNC5(entries[idx].control);
		reg &= ~NSP_ETH_CTRL_ENABLED;
		reg |= FUNC1(NSP_ETH_CTRL_ENABLED, enable);
		entries[idx].control = FUNC4(reg);

		FUNC9(nsp, true);
	}

	return FUNC6(nsp);
}