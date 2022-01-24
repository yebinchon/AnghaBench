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
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ath6kl_vif {int /*<<< orphan*/  fw_vif_idx; int /*<<< orphan*/  flags; } ;
struct ath6kl {int tx_pwr; int /*<<< orphan*/  event_wq; int /*<<< orphan*/  wmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTED ; 
 int EINTR ; 
 int EIO ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct ath6kl_vif*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct ath6kl_vif* FUNC2 (struct ath6kl*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC7 (struct wiphy*) ; 

__attribute__((used)) static int FUNC8(struct wiphy *wiphy,
				       struct wireless_dev *wdev,
				       int *dbm)
{
	struct ath6kl *ar = (struct ath6kl *)FUNC7(wiphy);
	struct ath6kl_vif *vif;

	vif = FUNC2(ar);
	if (!vif)
		return -EIO;

	if (!FUNC0(vif))
		return -EIO;

	if (FUNC5(CONNECTED, &vif->flags)) {
		ar->tx_pwr = 255;

		if (FUNC3(ar->wmi, vif->fw_vif_idx) != 0) {
			FUNC1("ath6kl_wmi_get_tx_pwr_cmd failed\n");
			return -EIO;
		}

		FUNC6(ar->event_wq, ar->tx_pwr != 255,
						 5 * HZ);

		if (FUNC4(current)) {
			FUNC1("target did not respond\n");
			return -EINTR;
		}
	}

	*dbm = ar->tx_pwr;
	return 0;
}