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
struct hwsim_pib {int dummy; } ;
struct hwsim_phy {int /*<<< orphan*/  hw; int /*<<< orphan*/  pib; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hwsim_phy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hwsim_pib*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 
 struct hwsim_pib* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct hwsim_phy *phy)
{
	struct hwsim_pib *pib;

	FUNC0(phy);

	FUNC4(&phy->list);

	FUNC6();
	pib = FUNC5(phy->pib);
	FUNC7();

	FUNC3(pib, rcu);

	FUNC2(phy->hw);
	FUNC1(phy->hw);
}