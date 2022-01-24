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
struct ubi_wl_entry {int ec; } ;
struct ubi_device {int /*<<< orphan*/  wl_lock; struct ubi_wl_entry** lookuptbl; } ;
struct seq_file {struct ubi_device* private; } ;

/* Variables and functions */
 void* SEQ_START_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ubi_device*,int) ; 

__attribute__((used)) static int FUNC5(struct seq_file *s, void *iter)
{
	struct ubi_device *ubi = s->private;
	struct ubi_wl_entry *wl;
	int *block_number = iter;
	int erase_count = -1;
	int err;

	/* If this is the start, print a header */
	if (iter == SEQ_START_TOKEN) {
		FUNC1(s,
			 "physical_block_number\terase_count\tblock_status\tread_status\n");
		return 0;
	}

	err = FUNC4(ubi, *block_number);
	if (err)
		return err;

	FUNC2(&ubi->wl_lock);

	wl = ubi->lookuptbl[*block_number];
	if (wl)
		erase_count = wl->ec;

	FUNC3(&ubi->wl_lock);

	if (erase_count < 0)
		return 0;

	FUNC0(s, "%-22d\t%-11d\n", *block_number, erase_count);

	return 0;
}