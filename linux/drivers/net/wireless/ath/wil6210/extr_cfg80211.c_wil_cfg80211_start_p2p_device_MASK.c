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
struct wil6210_priv {int p2p_dev_started; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wil6210_priv*,char*) ; 
 struct wil6210_priv* FUNC1 (struct wiphy*) ; 

__attribute__((used)) static int FUNC2(struct wiphy *wiphy,
					 struct wireless_dev *wdev)
{
	struct wil6210_priv *wil = FUNC1(wiphy);

	FUNC0(wil, "start_p2p_device: entered\n");
	wil->p2p_dev_started = 1;
	return 0;
}