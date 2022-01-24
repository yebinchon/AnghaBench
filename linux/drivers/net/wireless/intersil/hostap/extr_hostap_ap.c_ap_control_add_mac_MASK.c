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
struct mac_restrictions {int /*<<< orphan*/  lock; int /*<<< orphan*/  entries; int /*<<< orphan*/  mac_list; } ;
struct mac_entry {int /*<<< orphan*/  list; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mac_entry* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct mac_restrictions *mac_restrictions, u8 *mac)
{
	struct mac_entry *entry;

	entry = FUNC0(sizeof(struct mac_entry), GFP_KERNEL);
	if (entry == NULL)
		return -ENOMEM;

	FUNC2(entry->addr, mac, ETH_ALEN);

	FUNC3(&mac_restrictions->lock);
	FUNC1(&entry->list, &mac_restrictions->mac_list);
	mac_restrictions->entries++;
	FUNC4(&mac_restrictions->lock);

	return 0;
}