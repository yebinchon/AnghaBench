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
typedef  int /*<<< orphan*/  u16 ;
struct vlan_hdr {void* h_vlan_encapsulated_proto; void* h_vlan_TCI; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct mlx5e_encap_entry {int /*<<< orphan*/  h_dest; } ;
struct ethhdr {void* h_proto; int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_dest; } ;

/* Variables and functions */
 int ETH_HLEN ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 void* FUNC4 (struct net_device*) ; 

__attribute__((used)) static char *FUNC5(char *buf, struct net_device *dev,
			     struct mlx5e_encap_entry *e,
			     u16 proto)
{
	struct ethhdr *eth = (struct ethhdr *)buf;
	char *ip;

	FUNC0(eth->h_dest, e->h_dest);
	FUNC0(eth->h_source, dev->dev_addr);
	if (FUNC2(dev)) {
		struct vlan_hdr *vlan = (struct vlan_hdr *)
					((char *)eth + ETH_HLEN);
		ip = (char *)vlan + VLAN_HLEN;
		eth->h_proto = FUNC4(dev);
		vlan->h_vlan_TCI = FUNC1(FUNC3(dev));
		vlan->h_vlan_encapsulated_proto = FUNC1(proto);
	} else {
		eth->h_proto = FUNC1(proto);
		ip = (char *)eth + ETH_HLEN;
	}

	return ip;
}