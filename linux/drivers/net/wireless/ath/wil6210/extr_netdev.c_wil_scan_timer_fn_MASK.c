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
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int /*<<< orphan*/  status; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wil6210_vif* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scan_timer ; 
 struct wil6210_vif* vif ; 
 struct wil6210_priv* FUNC2 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  wil_status_fwready ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct wil6210_vif *vif = FUNC1(vif, t, scan_timer);
	struct wil6210_priv *wil = FUNC2(vif);

	FUNC0(wil_status_fwready, wil->status);
	FUNC3(wil, "Scan timeout detected, start fw error recovery\n");
	FUNC4(wil);
}