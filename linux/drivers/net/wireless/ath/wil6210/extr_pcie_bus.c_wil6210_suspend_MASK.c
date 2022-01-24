#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  successful_suspends; } ;
struct TYPE_4__ {int /*<<< orphan*/  successful_suspends; } ;
struct TYPE_6__ {TYPE_2__ r_on; TYPE_1__ r_off; } ;
struct wil6210_priv {TYPE_3__ suspend_stats; scalar_t__ keep_radio_on_during_sleep; int /*<<< orphan*/  vif_mutex; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct wil6210_priv* FUNC3 (struct pci_dev*) ; 
 struct pci_dev* FUNC4 (struct device*) ; 
 int FUNC5 (struct wil6210_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,char*,char*) ; 
 int FUNC7 (struct wil6210_priv*,int,int) ; 
 int FUNC8 (struct wil6210_priv*,int,int) ; 

__attribute__((used)) static int FUNC9(struct device *dev, bool is_runtime)
{
	int rc = 0;
	struct pci_dev *pdev = FUNC4(dev);
	struct wil6210_priv *wil = FUNC3(pdev);
	bool keep_radio_on, active_ifaces;

	FUNC6(wil, "suspend: %s\n", is_runtime ? "runtime" : "system");

	FUNC0(&wil->vif_mutex);
	active_ifaces = FUNC7(wil, true, false);
	FUNC1(&wil->vif_mutex);
	keep_radio_on = active_ifaces && wil->keep_radio_on_during_sleep;

	rc = FUNC5(wil, is_runtime);
	if (rc)
		goto out;

	rc = FUNC8(wil, is_runtime, keep_radio_on);
	if (!rc) {
		/* In case radio stays on, platform device will control
		 * PCIe master
		 */
		if (!keep_radio_on) {
			/* disable bus mastering */
			FUNC2(pdev);
			wil->suspend_stats.r_off.successful_suspends++;
		} else {
			wil->suspend_stats.r_on.successful_suspends++;
		}
	}
out:
	return rc;
}