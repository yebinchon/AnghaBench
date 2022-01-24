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
struct be_adapter {int dummy; } ;

/* Variables and functions */
 int BE_READ_SEEPROM_LEN ; 
 int /*<<< orphan*/  LANCER_VPD_PF_FILE ; 
 int /*<<< orphan*/  LANCER_VPD_VF_FILE ; 
 int /*<<< orphan*/  MAX_PRIVILEGES ; 
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct be_adapter*) ; 
 int FUNC3 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 struct be_adapter* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev)
{
	struct be_adapter *adapter = FUNC4(netdev);

	if (!FUNC1(adapter, MAX_PRIVILEGES))
		return 0;

	if (FUNC2(adapter)) {
		if (FUNC0(adapter))
			return FUNC3(adapter,
						       LANCER_VPD_PF_FILE);
		else
			return FUNC3(adapter,
						       LANCER_VPD_VF_FILE);
	} else {
		return BE_READ_SEEPROM_LEN;
	}
}