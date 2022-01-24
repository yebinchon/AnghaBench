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
struct ofdpa_neigh_tbl_entry {scalar_t__ ref_count; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ofdpa_neigh_tbl_entry*) ; 

__attribute__((used)) static void FUNC2(struct ofdpa_neigh_tbl_entry *entry)
{
	if (--entry->ref_count == 0) {
		FUNC0(&entry->entry);
		FUNC1(entry);
	}
}