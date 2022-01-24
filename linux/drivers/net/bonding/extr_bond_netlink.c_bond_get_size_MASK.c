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
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 size_t BOND_MAX_ARP_TARGETS ; 
 int ETH_ALEN ; 
 size_t FUNC0 (int) ; 

__attribute__((used)) static size_t FUNC1(const struct net_device *bond_dev)
{
	return FUNC0(sizeof(u8)) +	/* IFLA_BOND_MODE */
		FUNC0(sizeof(u32)) +	/* IFLA_BOND_ACTIVE_SLAVE */
		FUNC0(sizeof(u32)) +	/* IFLA_BOND_MIIMON */
		FUNC0(sizeof(u32)) +	/* IFLA_BOND_UPDELAY */
		FUNC0(sizeof(u32)) +	/* IFLA_BOND_DOWNDELAY */
		FUNC0(sizeof(u8)) +	/* IFLA_BOND_USE_CARRIER */
		FUNC0(sizeof(u32)) +	/* IFLA_BOND_ARP_INTERVAL */
						/* IFLA_BOND_ARP_IP_TARGET */
		FUNC0(sizeof(struct nlattr)) +
		FUNC0(sizeof(u32)) * BOND_MAX_ARP_TARGETS +
		FUNC0(sizeof(u32)) +	/* IFLA_BOND_ARP_VALIDATE */
		FUNC0(sizeof(u32)) +	/* IFLA_BOND_ARP_ALL_TARGETS */
		FUNC0(sizeof(u32)) +	/* IFLA_BOND_PRIMARY */
		FUNC0(sizeof(u8)) +	/* IFLA_BOND_PRIMARY_RESELECT */
		FUNC0(sizeof(u8)) +	/* IFLA_BOND_FAIL_OVER_MAC */
		FUNC0(sizeof(u8)) +	/* IFLA_BOND_XMIT_HASH_POLICY */
		FUNC0(sizeof(u32)) +	/* IFLA_BOND_RESEND_IGMP */
		FUNC0(sizeof(u8)) +	/* IFLA_BOND_NUM_PEER_NOTIF */
		FUNC0(sizeof(u8)) +   /* IFLA_BOND_ALL_SLAVES_ACTIVE */
		FUNC0(sizeof(u32)) +	/* IFLA_BOND_MIN_LINKS */
		FUNC0(sizeof(u32)) +	/* IFLA_BOND_LP_INTERVAL */
		FUNC0(sizeof(u32)) +  /* IFLA_BOND_PACKETS_PER_SLAVE */
		FUNC0(sizeof(u8)) +	/* IFLA_BOND_AD_LACP_RATE */
		FUNC0(sizeof(u8)) +	/* IFLA_BOND_AD_SELECT */
		FUNC0(sizeof(struct nlattr)) + /* IFLA_BOND_AD_INFO */
		FUNC0(sizeof(u16)) + /* IFLA_BOND_AD_INFO_AGGREGATOR */
		FUNC0(sizeof(u16)) + /* IFLA_BOND_AD_INFO_NUM_PORTS */
		FUNC0(sizeof(u16)) + /* IFLA_BOND_AD_INFO_ACTOR_KEY */
		FUNC0(sizeof(u16)) + /* IFLA_BOND_AD_INFO_PARTNER_KEY*/
		FUNC0(ETH_ALEN) +    /* IFLA_BOND_AD_INFO_PARTNER_MAC*/
		FUNC0(sizeof(u16)) + /* IFLA_BOND_AD_ACTOR_SYS_PRIO */
		FUNC0(sizeof(u16)) + /* IFLA_BOND_AD_USER_PORT_KEY */
		FUNC0(ETH_ALEN) + /* IFLA_BOND_AD_ACTOR_SYSTEM */
		FUNC0(sizeof(u8)) + /* IFLA_BOND_TLB_DYNAMIC_LB */
		FUNC0(sizeof(u32)) +	/* IFLA_BOND_PEER_NOTIF_DELAY */
		0;
}