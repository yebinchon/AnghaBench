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
typedef  int u8 ;
typedef  int /*<<< orphan*/ * u16 ;
struct net_device {struct ethtool_ops* ethtool_ops; } ;
struct ethtool_ops {int /*<<< orphan*/  (* get_eeprom ) (struct net_device*,struct ethtool_eeprom*,int*) ;int /*<<< orphan*/  (* get_eeprom_len ) (struct net_device*) ;} ;
struct ethtool_eeprom {int /*<<< orphan*/  len; scalar_t__ offset; } ;
struct e1000_adapter {struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int EEPROM_CHECKSUM_REG ; 
 int /*<<< orphan*/ * EEPROM_SUM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct ethtool_eeprom*,int*) ; 

__attribute__((used)) static void FUNC6(struct e1000_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct ethtool_eeprom eeprom;
	const struct ethtool_ops *ops = netdev->ethtool_ops;
	u8 *data;
	int i;
	u16 csum_old, csum_new = 0;

	eeprom.len = ops->get_eeprom_len(netdev);
	eeprom.offset = 0;

	data = FUNC1(eeprom.len, GFP_KERNEL);
	if (!data)
		return;

	ops->get_eeprom(netdev, &eeprom, data);

	csum_old = (data[EEPROM_CHECKSUM_REG * 2]) +
		   (data[EEPROM_CHECKSUM_REG * 2 + 1] << 8);
	for (i = 0; i < EEPROM_CHECKSUM_REG * 2; i += 2)
		csum_new += data[i] + (data[i + 1] << 8);
	csum_new = EEPROM_SUM - csum_new;

	FUNC2("/*********************/\n");
	FUNC2("Current EEPROM Checksum : 0x%04x\n", csum_old);
	FUNC2("Calculated              : 0x%04x\n", csum_new);

	FUNC2("Offset    Values\n");
	FUNC2("========  ======\n");
	FUNC3(KERN_ERR, "", DUMP_PREFIX_OFFSET, 16, 1, data, 128, 0);

	FUNC2("Include this output when contacting your support provider.\n");
	FUNC2("This is not a software error! Something bad happened to\n");
	FUNC2("your hardware or EEPROM image. Ignoring this problem could\n");
	FUNC2("result in further problems, possibly loss of data,\n");
	FUNC2("corruption or system hangs!\n");
	FUNC2("The MAC Address will be reset to 00:00:00:00:00:00,\n");
	FUNC2("which is invalid and requires you to set the proper MAC\n");
	FUNC2("address manually before continuing to enable this network\n");
	FUNC2("device. Please inspect the EEPROM dump and report the\n");
	FUNC2("issue to your hardware vendor or Intel Customer Support.\n");
	FUNC2("/*********************/\n");

	FUNC0(data);
}