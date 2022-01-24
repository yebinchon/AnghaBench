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
struct cxl {int /*<<< orphan*/  contexts_num; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct cxl *adapter)
{
	int rc;
	/* no active contexts -> contexts_num == 0 */
	rc = FUNC0(&adapter->contexts_num, 0, -1);
	return rc ? -EBUSY : 0;
}