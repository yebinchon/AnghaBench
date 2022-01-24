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
struct cpsw_slave {int /*<<< orphan*/  mac_sl; int /*<<< orphan*/ * phy; int /*<<< orphan*/  slave_num; } ;
struct cpsw_common {int /*<<< orphan*/  ale; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALE_PORT_STATE ; 
 int /*<<< orphan*/  ALE_PORT_STATE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct cpsw_slave *slave, struct cpsw_common *cpsw)
{
	u32 slave_port;

	slave_port = FUNC1(slave->slave_num);

	if (!slave->phy)
		return;
	FUNC5(slave->phy);
	FUNC4(slave->phy);
	slave->phy = NULL;
	FUNC0(cpsw->ale, slave_port,
			     ALE_PORT_STATE, ALE_PORT_STATE_DISABLE);
	FUNC3(slave->mac_sl, 100);
	FUNC2(slave->mac_sl);
}