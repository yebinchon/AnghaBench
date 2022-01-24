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
typedef  int /*<<< orphan*/  u8 ;
struct smsc911x_data {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int len; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  E2P_CMD_EPC_CMD_EWDS_ ; 
 int /*<<< orphan*/  E2P_CMD_EPC_CMD_EWEN_ ; 
 struct smsc911x_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct smsc911x_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smsc911x_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				       struct ethtool_eeprom *eeprom, u8 *data)
{
	int ret;
	struct smsc911x_data *pdata = FUNC0(dev);

	FUNC1(pdata);
	FUNC2(pdata, E2P_CMD_EPC_CMD_EWEN_);
	ret = FUNC3(pdata, eeprom->offset, *data);
	FUNC2(pdata, E2P_CMD_EPC_CMD_EWDS_);

	/* Single byte write, according to man page */
	eeprom->len = 1;

	return ret;
}