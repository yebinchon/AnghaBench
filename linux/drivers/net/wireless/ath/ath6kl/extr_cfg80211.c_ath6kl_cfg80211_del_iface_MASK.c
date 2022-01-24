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
struct wireless_dev {int /*<<< orphan*/  netdev; } ;
struct wiphy {int dummy; } ;
struct ath6kl_vif {int /*<<< orphan*/  list; } ;
struct ath6kl {int /*<<< orphan*/  flag; int /*<<< orphan*/  list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  WMI_READY ; 
 int /*<<< orphan*/  FUNC0 (struct ath6kl_vif*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ath6kl_vif* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ath6kl* FUNC9 (struct wiphy*) ; 

__attribute__((used)) static int FUNC10(struct wiphy *wiphy,
				     struct wireless_dev *wdev)
{
	struct ath6kl *ar = FUNC9(wiphy);
	struct ath6kl_vif *vif = FUNC3(wdev->netdev);

	FUNC6(&ar->list_lock);
	FUNC2(&vif->list);
	FUNC7(&ar->list_lock);

	FUNC1(vif, FUNC8(WMI_READY, &ar->flag));

	FUNC4();
	FUNC0(vif);
	FUNC5();

	return 0;
}