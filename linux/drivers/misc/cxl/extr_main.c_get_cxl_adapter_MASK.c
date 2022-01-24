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
struct cxl {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  adapter_idr_lock ; 
 int /*<<< orphan*/  cxl_adapter_idr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cxl* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct cxl *FUNC4(int num)
{
	struct cxl *adapter;

	FUNC2(&adapter_idr_lock);
	if ((adapter = FUNC1(&cxl_adapter_idr, num)))
		FUNC0(&adapter->dev);
	FUNC3(&adapter_idr_lock);

	return adapter;
}