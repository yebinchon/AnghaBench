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
struct genwqe_file {int /*<<< orphan*/  list; int /*<<< orphan*/  opener; } ;
struct genwqe_dev {int /*<<< orphan*/  file_lock; int /*<<< orphan*/  file_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct genwqe_dev *cd, struct genwqe_file *cfile)
{
	unsigned long flags;

	cfile->opener = FUNC0(FUNC4(current));
	FUNC2(&cd->file_lock, flags);
	FUNC1(&cfile->list, &cd->file_list);
	FUNC3(&cd->file_lock, flags);
}