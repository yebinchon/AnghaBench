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
struct macvlan_source_entry {int /*<<< orphan*/  hlist; struct macvlan_dev* vlan; int /*<<< orphan*/  addr; } ;
struct macvlan_port {struct hlist_head* vlan_source_hash; } ;
struct macvlan_dev {int /*<<< orphan*/  macaddr_count; struct macvlan_port* port; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 struct macvlan_source_entry* FUNC2 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (unsigned char const*) ; 
 struct macvlan_source_entry* FUNC4 (struct macvlan_dev*,unsigned char const*) ; 

__attribute__((used)) static int FUNC5(struct macvlan_dev *vlan,
				   const unsigned char *addr)
{
	struct macvlan_port *port = vlan->port;
	struct macvlan_source_entry *entry;
	struct hlist_head *h;

	entry = FUNC4(vlan, addr);
	if (entry)
		return 0;

	entry = FUNC2(sizeof(*entry), GFP_KERNEL);
	if (!entry)
		return -ENOMEM;

	FUNC0(entry->addr, addr);
	entry->vlan = vlan;
	h = &port->vlan_source_hash[FUNC3(addr)];
	FUNC1(&entry->hlist, h);
	vlan->macaddr_count++;

	return 0;
}