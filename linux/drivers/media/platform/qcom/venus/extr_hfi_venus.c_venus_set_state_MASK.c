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
struct venus_hfi_device {int state; int /*<<< orphan*/  lock; } ;
typedef  enum venus_state { ____Placeholder_venus_state } venus_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct venus_hfi_device *hdev,
			    enum venus_state state)
{
	FUNC0(&hdev->lock);
	hdev->state = state;
	FUNC1(&hdev->lock);
}