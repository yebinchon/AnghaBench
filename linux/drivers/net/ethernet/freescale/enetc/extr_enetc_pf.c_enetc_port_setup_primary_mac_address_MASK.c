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
struct enetc_hw {int dummy; } ;
struct enetc_si {TYPE_1__* pdev; struct enetc_hw hw; } ;
struct enetc_pf {int total_vfs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MAX_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (struct enetc_hw*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct enetc_hw*,int,unsigned char*) ; 
 struct enetc_pf* FUNC3 (struct enetc_si*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 

__attribute__((used)) static void FUNC6(struct enetc_si *si)
{
	unsigned char mac_addr[MAX_ADDR_LEN];
	struct enetc_pf *pf = FUNC3(si);
	struct enetc_hw *hw = &si->hw;
	int i;

	/* check MAC addresses for PF and all VFs, if any is 0 set it ro rand */
	for (i = 0; i < pf->total_vfs + 1; i++) {
		FUNC1(hw, i, mac_addr);
		if (!FUNC5(mac_addr))
			continue;
		FUNC4(mac_addr);
		FUNC0(&si->pdev->dev, "no MAC address specified for SI%d, using %pM\n",
			 i, mac_addr);
		FUNC2(hw, i, mac_addr);
	}
}