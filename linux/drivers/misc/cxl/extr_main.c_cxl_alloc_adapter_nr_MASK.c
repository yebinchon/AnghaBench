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
struct cxl {int adapter_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  adapter_idr_lock ; 
 int /*<<< orphan*/  cxl_adapter_idr ; 
 int FUNC0 (int /*<<< orphan*/ *,struct cxl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct cxl *adapter)
{
	int i;

	FUNC1(GFP_KERNEL);
	FUNC3(&adapter_idr_lock);
	i = FUNC0(&cxl_adapter_idr, adapter, 0, 0, GFP_NOWAIT);
	FUNC4(&adapter_idr_lock);
	FUNC2();
	if (i < 0)
		return i;

	adapter->adapter_num = i;

	return 0;
}