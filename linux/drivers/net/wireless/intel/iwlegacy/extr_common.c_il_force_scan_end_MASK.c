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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  S_SCANNING ; 
 int /*<<< orphan*/  S_SCAN_ABORTING ; 
 int /*<<< orphan*/  S_SCAN_HW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(struct il_priv *il)
{
	FUNC3(&il->mutex);

	if (!FUNC4(S_SCANNING, &il->status)) {
		FUNC0("Forcing scan end while not scanning\n");
		return;
	}

	FUNC0("Forcing scan end\n");
	FUNC1(S_SCANNING, &il->status);
	FUNC1(S_SCAN_HW, &il->status);
	FUNC1(S_SCAN_ABORTING, &il->status);
	FUNC2(il, true);
}