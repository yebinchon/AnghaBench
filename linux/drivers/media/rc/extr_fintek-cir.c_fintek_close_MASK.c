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
struct rc_dev {struct fintek_dev* priv; } ;
struct fintek_dev {int /*<<< orphan*/  fintek_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fintek_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct rc_dev *dev)
{
	struct fintek_dev *fintek = dev->priv;
	unsigned long flags;

	FUNC1(&fintek->fintek_lock, flags);
	FUNC0(fintek);
	FUNC2(&fintek->fintek_lock, flags);
}