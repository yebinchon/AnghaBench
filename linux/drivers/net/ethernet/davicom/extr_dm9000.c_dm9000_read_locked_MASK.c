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
struct board_info {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct board_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int
FUNC3(struct board_info *db, int reg)
{
	unsigned long flags;
	unsigned int ret;

	FUNC1(&db->lock, flags);
	ret = FUNC0(db, reg);
	FUNC2(&db->lock, flags);

	return ret;
}