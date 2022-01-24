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
struct il_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  scan_check; int /*<<< orphan*/  scan_completed; int /*<<< orphan*/  abort_scan; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct il_priv *il)
{
	FUNC1(&il->abort_scan);
	FUNC1(&il->scan_completed);

	if (FUNC0(&il->scan_check)) {
		FUNC3(&il->mutex);
		FUNC2(il);
		FUNC4(&il->mutex);
	}
}