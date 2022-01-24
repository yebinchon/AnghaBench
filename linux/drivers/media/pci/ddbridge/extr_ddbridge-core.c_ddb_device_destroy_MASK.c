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
struct ddb {int /*<<< orphan*/  nr; int /*<<< orphan*/  ddb_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ddb_class ; 
 int /*<<< orphan*/  FUNC2 (struct ddb*) ; 
 int /*<<< orphan*/  ddb_major ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(struct ddb *dev)
{
	if (FUNC0(dev->ddb_dev))
		return;
	FUNC2(dev);
	FUNC3(&ddb_class, FUNC1(ddb_major, dev->nr));
}