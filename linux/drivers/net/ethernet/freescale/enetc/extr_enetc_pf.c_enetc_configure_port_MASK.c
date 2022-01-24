#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct enetc_pf {int /*<<< orphan*/  vlan_promisc_simap; TYPE_1__* si; } ;
struct enetc_hw {int dummy; } ;
struct TYPE_4__ {struct enetc_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_PMR ; 
 int /*<<< orphan*/  ENETC_PMR_EN ; 
 int /*<<< orphan*/  ENETC_PSIPMR ; 
 int ENETC_RSSHASH_KEY_SIZE ; 
 int /*<<< orphan*/  ENETC_VLAN_PROMISC_MAP_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct enetc_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct enetc_hw*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct enetc_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct enetc_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct enetc_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(struct enetc_pf *pf)
{
	u8 hash_key[ENETC_RSSHASH_KEY_SIZE];
	struct enetc_hw *hw = &pf->si->hw;

	FUNC1(hw);

	FUNC0(hw);

	FUNC4(pf->si);

	/* set up hash key */
	FUNC8(hash_key, ENETC_RSSHASH_KEY_SIZE);
	FUNC6(hw, hash_key);

	/* split up RFS entries */
	FUNC2(pf->si);

	/* fix-up primary MAC addresses, if not set already */
	FUNC3(pf->si);

	/* enforce VLAN promisc mode for all SIs */
	pf->vlan_promisc_simap = ENETC_VLAN_PROMISC_MAP_ALL;
	FUNC7(hw, pf->vlan_promisc_simap);

	FUNC5(hw, ENETC_PSIPMR, 0);

	/* enable port */
	FUNC5(hw, ENETC_PMR, ENETC_PMR_EN);
}