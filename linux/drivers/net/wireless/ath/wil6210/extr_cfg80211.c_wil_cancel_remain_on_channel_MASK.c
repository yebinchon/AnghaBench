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
typedef  int /*<<< orphan*/  u64 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int dummy; } ;

/* Variables and functions */
 struct wil6210_vif* FUNC0 (struct wil6210_priv*,struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*) ; 
 int FUNC2 (struct wil6210_vif*,int /*<<< orphan*/ ) ; 
 struct wil6210_priv* FUNC3 (struct wiphy*) ; 

__attribute__((used)) static int FUNC4(struct wiphy *wiphy,
					struct wireless_dev *wdev,
					u64 cookie)
{
	struct wil6210_priv *wil = FUNC3(wiphy);
	struct wil6210_vif *vif = FUNC0(wil, wdev);

	FUNC1(wil, "cancel_remain_on_channel\n");

	return FUNC2(vif, cookie);
}