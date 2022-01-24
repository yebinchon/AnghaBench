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
struct wil_ring {int dummy; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int /*<<< orphan*/  net_queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wil6210_priv*,struct wil6210_vif*,struct wil_ring*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct wil6210_priv *wil, struct wil6210_vif *vif,
			      struct wil_ring *ring, bool check_stop)
{
	FUNC1(&wil->net_queue_lock);
	FUNC0(wil, vif, ring, check_stop);
	FUNC2(&wil->net_queue_lock);
}