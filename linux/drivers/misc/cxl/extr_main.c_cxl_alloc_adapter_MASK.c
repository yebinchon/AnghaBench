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
struct cxl {int /*<<< orphan*/  contexts_num; int /*<<< orphan*/  adapter_num; int /*<<< orphan*/  dev; int /*<<< orphan*/  afu_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxl*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cxl*) ; 
 struct cxl* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct cxl *FUNC7(void)
{
	struct cxl *adapter;

	if (!(adapter = FUNC5(sizeof(struct cxl), GFP_KERNEL)))
		return NULL;

	FUNC6(&adapter->afu_list_lock);

	if (FUNC1(adapter))
		goto err1;

	if (FUNC3(&adapter->dev, "card%i", adapter->adapter_num))
		goto err2;

	/* start with context lock taken */
	FUNC0(&adapter->contexts_num, -1);

	return adapter;
err2:
	FUNC2(adapter);
err1:
	FUNC4(adapter);
	return NULL;
}