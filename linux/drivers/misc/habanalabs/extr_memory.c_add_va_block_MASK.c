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
typedef  int /*<<< orphan*/  u64 ;
struct hl_va_range {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct hl_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hl_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC3(struct hl_device *hdev,
		struct hl_va_range *va_range, u64 start, u64 end)
{
	int rc;

	FUNC1(&va_range->lock);
	rc = FUNC0(hdev, &va_range->list, start, end);
	FUNC2(&va_range->lock);

	return rc;
}