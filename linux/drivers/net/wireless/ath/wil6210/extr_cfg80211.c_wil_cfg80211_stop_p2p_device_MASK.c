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
struct wil6210_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  vif_mutex; scalar_t__ p2p_dev_started; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*) ; 
 struct wil6210_priv* FUNC4 (struct wiphy*) ; 

__attribute__((used)) static void FUNC5(struct wiphy *wiphy,
					 struct wireless_dev *wdev)
{
	struct wil6210_priv *wil = FUNC4(wiphy);

	if (!wil->p2p_dev_started)
		return;

	FUNC2(wil, "stop_p2p_device: entered\n");
	FUNC0(&wil->mutex);
	FUNC0(&wil->vif_mutex);
	FUNC3(wil);
	wil->p2p_dev_started = 0;
	FUNC1(&wil->vif_mutex);
	FUNC1(&wil->mutex);
}