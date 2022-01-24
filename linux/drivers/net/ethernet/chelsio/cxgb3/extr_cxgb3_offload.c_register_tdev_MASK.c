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
struct t3cdev {int /*<<< orphan*/  ofld_dev_list; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  cxgb3_db_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ofld_dev_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct t3cdev *tdev)
{
	static int unit;

	FUNC1(&cxgb3_db_lock);
	FUNC3(tdev->name, sizeof(tdev->name), "ofld_dev%d", unit++);
	FUNC0(&tdev->ofld_dev_list, &ofld_dev_list);
	FUNC2(&cxgb3_db_lock);
}