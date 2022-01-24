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
struct net_device {int dummy; } ;
struct jme_adapter {int dummy; } ;

/* Variables and functions */
 int JME_PHY_TIMEOUT ; 
 int /*<<< orphan*/  JME_SMI ; 
 int SMI_DATA_MASK ; 
 int SMI_DATA_SHIFT ; 
 int SMI_OP_REQ ; 
 int SMI_OP_WRITE ; 
 int FUNC0 (struct jme_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 
 struct jme_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(struct net_device *netdev,
				int phy, int reg, int val)
{
	struct jme_adapter *jme = FUNC2(netdev);
	int i;

	FUNC1(jme, JME_SMI, SMI_OP_WRITE | SMI_OP_REQ |
		((val << SMI_DATA_SHIFT) & SMI_DATA_MASK) |
		FUNC4(phy) | FUNC5(reg));

	FUNC7();
	for (i = JME_PHY_TIMEOUT * 50 ; i > 0 ; --i) {
		FUNC6(20);
		if ((FUNC0(jme, JME_SMI) & SMI_OP_REQ) == 0)
			break;
	}

	if (i == 0)
		FUNC3("phy(%d) write timeout : %d\n", phy, reg);
}