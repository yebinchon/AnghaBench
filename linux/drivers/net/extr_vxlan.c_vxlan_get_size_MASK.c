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
struct in6_addr {int dummy; } ;
struct ifla_vxlan_port_range {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 size_t FUNC0 (int) ; 

__attribute__((used)) static size_t FUNC1(const struct net_device *dev)
{

	return FUNC0(sizeof(__u32)) +	/* IFLA_VXLAN_ID */
		FUNC0(sizeof(struct in6_addr)) + /* IFLA_VXLAN_GROUP{6} */
		FUNC0(sizeof(__u32)) +	/* IFLA_VXLAN_LINK */
		FUNC0(sizeof(struct in6_addr)) + /* IFLA_VXLAN_LOCAL{6} */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_TTL */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_TTL_INHERIT */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_TOS */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_DF */
		FUNC0(sizeof(__be32)) + /* IFLA_VXLAN_LABEL */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_LEARNING */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_PROXY */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_RSC */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_L2MISS */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_L3MISS */
		FUNC0(sizeof(__u8)) +	/* IFLA_VXLAN_COLLECT_METADATA */
		FUNC0(sizeof(__u32)) +	/* IFLA_VXLAN_AGEING */
		FUNC0(sizeof(__u32)) +	/* IFLA_VXLAN_LIMIT */
		FUNC0(sizeof(struct ifla_vxlan_port_range)) +
		FUNC0(sizeof(__be16)) + /* IFLA_VXLAN_PORT */
		FUNC0(sizeof(__u8)) + /* IFLA_VXLAN_UDP_CSUM */
		FUNC0(sizeof(__u8)) + /* IFLA_VXLAN_UDP_ZERO_CSUM6_TX */
		FUNC0(sizeof(__u8)) + /* IFLA_VXLAN_UDP_ZERO_CSUM6_RX */
		FUNC0(sizeof(__u8)) + /* IFLA_VXLAN_REMCSUM_TX */
		FUNC0(sizeof(__u8)) + /* IFLA_VXLAN_REMCSUM_RX */
		0;
}