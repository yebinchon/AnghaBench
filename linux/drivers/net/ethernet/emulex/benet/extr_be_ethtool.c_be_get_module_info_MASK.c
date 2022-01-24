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
struct net_device {int dummy; } ;
struct ethtool_modinfo {int eeprom_len; int /*<<< orphan*/  type; } ;
struct be_adapter {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_MODULE_SFF_8079 ; 
 int /*<<< orphan*/  ETH_MODULE_SFF_8472 ; 
 int /*<<< orphan*/  MAX_PRIVILEGES ; 
 int PAGE_DATA_LEN ; 
 size_t SFP_PLUS_SFF_8472_COMP ; 
 int /*<<< orphan*/  TR_PAGE_A0 ; 
 int FUNC0 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 struct be_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev,
			      struct ethtool_modinfo *modinfo)
{
	struct be_adapter *adapter = FUNC3(netdev);
	u8 page_data[PAGE_DATA_LEN];
	int status;

	if (!FUNC2(adapter, MAX_PRIVILEGES))
		return -EOPNOTSUPP;

	status = FUNC0(adapter, TR_PAGE_A0,
						   page_data);
	if (!status) {
		if (!page_data[SFP_PLUS_SFF_8472_COMP]) {
			modinfo->type = ETH_MODULE_SFF_8079;
			modinfo->eeprom_len = PAGE_DATA_LEN;
		} else {
			modinfo->type = ETH_MODULE_SFF_8472;
			modinfo->eeprom_len = 2 * PAGE_DATA_LEN;
		}
	}
	return FUNC1(status);
}