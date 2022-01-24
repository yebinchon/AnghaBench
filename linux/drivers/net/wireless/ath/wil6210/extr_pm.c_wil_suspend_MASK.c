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
struct wil6210_priv {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  wil_status_suspended ; 
 int FUNC2 (struct wil6210_priv*) ; 
 int FUNC3 (struct wil6210_priv*) ; 

int FUNC4(struct wil6210_priv *wil, bool is_runtime, bool keep_radio_on)
{
	int rc = 0;

	FUNC1(wil, "suspend: %s\n", is_runtime ? "runtime" : "system");

	if (FUNC0(wil_status_suspended, wil->status)) {
		FUNC1(wil, "trying to suspend while suspended\n");
		return 0;
	}

	if (!keep_radio_on)
		rc = FUNC3(wil);
	else
		rc = FUNC2(wil);

	FUNC1(wil, "suspend: %s => %d\n",
		   is_runtime ? "runtime" : "system", rc);

	return rc;
}