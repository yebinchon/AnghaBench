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
struct wil6210_priv {int /*<<< orphan*/  status; int /*<<< orphan*/  vif_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*) ; 
 int FUNC5 (struct wil6210_priv*,int,int) ; 
 int /*<<< orphan*/  wil_status_suspended ; 
 int FUNC6 (struct wil6210_priv*) ; 

__attribute__((used)) static int FUNC7(struct wil6210_priv *wil)
{
	int rc = 0;
	bool active_ifaces;

	FUNC3(wil, "Enabling PCIe IRQ\n");
	FUNC4(wil);
	/* if any netif up, bring hardware up
	 * During open(), IFF_UP set after actual device method
	 * invocation. This prevent recursive call to wil_up()
	 * wil_status_suspended will be cleared in wil_reset
	 */
	FUNC1(&wil->vif_mutex);
	active_ifaces = FUNC5(wil, true, false);
	FUNC2(&wil->vif_mutex);
	if (active_ifaces)
		rc = FUNC6(wil);
	else
		FUNC0(wil_status_suspended, wil->status);

	return rc;
}