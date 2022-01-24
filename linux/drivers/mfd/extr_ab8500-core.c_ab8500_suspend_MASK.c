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
struct ab8500 {int /*<<< orphan*/  transfer_ongoing; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

int FUNC1(struct ab8500 *ab8500)
{
	if (FUNC0(&ab8500->transfer_ongoing))
		return -EINVAL;

	return 0;
}