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
struct il_priv {int /*<<< orphan*/  status; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  S_SCANNING ; 
 int /*<<< orphan*/  S_SCAN_ABORTING ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*) ; 
 int FUNC2 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct il_priv *il)
{
	int ret;

	FUNC3(&il->mutex);

	if (!FUNC5(S_SCANNING, &il->status)) {
		FUNC0("Not performing scan to abort\n");
		return;
	}

	if (FUNC4(S_SCAN_ABORTING, &il->status)) {
		FUNC0("Scan abort in progress\n");
		return;
	}

	ret = FUNC2(il);
	if (ret) {
		FUNC0("Send scan abort failed %d\n", ret);
		FUNC1(il);
	} else
		FUNC0("Successfully send scan abort\n");
}