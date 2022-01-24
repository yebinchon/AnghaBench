#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  discovery_expired_work; } ;
struct wil6210_vif {TYPE_1__ p2p; } ;
struct wil6210_priv {int dummy; } ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  discovery_timer; } ;

/* Variables and functions */
 struct wil6210_vif* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 TYPE_2__ p2p ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wil6210_vif* vif ; 
 struct wil6210_priv* FUNC2 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct wil6210_vif *vif = FUNC0(vif, t, p2p.discovery_timer);
	struct wil6210_priv *wil = FUNC2(vif);

	FUNC3(wil, "p2p_discovery_timer_fn\n");

	FUNC1(&vif->p2p.discovery_expired_work);
}