#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  delayed_listen_work; int /*<<< orphan*/  discovery_expired_work; int /*<<< orphan*/  discovery_timer; } ;
struct wil6210_vif {int bcast_ring; int net_queue_stopped; int /*<<< orphan*/  probe_client_pending; int /*<<< orphan*/  enable_tx_key_worker; TYPE_1__ p2p; int /*<<< orphan*/  disconnect_worker; int /*<<< orphan*/  probe_client_worker; int /*<<< orphan*/  scan_timer; int /*<<< orphan*/  connect_timer; int /*<<< orphan*/  probe_client_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wil_connect_timer_fn ; 
 int /*<<< orphan*/  wil_disconnect_worker ; 
 int /*<<< orphan*/  wil_enable_tx_key_worker ; 
 int /*<<< orphan*/  wil_p2p_delayed_listen_work ; 
 int /*<<< orphan*/  wil_p2p_discovery_timer_fn ; 
 int /*<<< orphan*/  wil_p2p_listen_expired ; 
 int /*<<< orphan*/  wil_probe_client_worker ; 
 int /*<<< orphan*/  wil_scan_timer_fn ; 

__attribute__((used)) static void FUNC4(struct wil6210_vif *vif)
{
	vif->bcast_ring = -1;

	FUNC2(&vif->probe_client_mutex);

	FUNC3(&vif->connect_timer, wil_connect_timer_fn, 0);
	FUNC3(&vif->scan_timer, wil_scan_timer_fn, 0);
	FUNC3(&vif->p2p.discovery_timer, wil_p2p_discovery_timer_fn, 0);

	FUNC1(&vif->probe_client_worker, wil_probe_client_worker);
	FUNC1(&vif->disconnect_worker, wil_disconnect_worker);
	FUNC1(&vif->p2p.discovery_expired_work, wil_p2p_listen_expired);
	FUNC1(&vif->p2p.delayed_listen_work, wil_p2p_delayed_listen_work);
	FUNC1(&vif->enable_tx_key_worker, wil_enable_tx_key_worker);

	FUNC0(&vif->probe_client_pending);

	vif->net_queue_stopped = 1;
}