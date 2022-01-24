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
struct list_head {int /*<<< orphan*/  next; } ;
struct eth_hash_entry {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 struct eth_hash_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 

__attribute__((used)) static inline struct eth_hash_entry
*FUNC3(struct list_head *addr_lst)
{
	struct eth_hash_entry *hash_entry = NULL;

	if (!FUNC2(addr_lst)) {
		hash_entry = FUNC0(addr_lst->next);
		FUNC1(&hash_entry->node);
	}
	return hash_entry;
}