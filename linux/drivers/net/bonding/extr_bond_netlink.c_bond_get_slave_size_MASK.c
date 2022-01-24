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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int MAX_ADDR_LEN ; 
 size_t FUNC0 (int) ; 

__attribute__((used)) static size_t FUNC1(const struct net_device *bond_dev,
				  const struct net_device *slave_dev)
{
	return FUNC0(sizeof(u8)) +	/* IFLA_BOND_SLAVE_STATE */
		FUNC0(sizeof(u8)) +	/* IFLA_BOND_SLAVE_MII_STATUS */
		FUNC0(sizeof(u32)) +	/* IFLA_BOND_SLAVE_LINK_FAILURE_COUNT */
		FUNC0(MAX_ADDR_LEN) +	/* IFLA_BOND_SLAVE_PERM_HWADDR */
		FUNC0(sizeof(u16)) +	/* IFLA_BOND_SLAVE_QUEUE_ID */
		FUNC0(sizeof(u16)) +	/* IFLA_BOND_SLAVE_AD_AGGREGATOR_ID */
		FUNC0(sizeof(u8)) +	/* IFLA_BOND_SLAVE_AD_ACTOR_OPER_PORT_STATE */
		FUNC0(sizeof(u16)) +	/* IFLA_BOND_SLAVE_AD_PARTNER_OPER_PORT_STATE */
		0;
}