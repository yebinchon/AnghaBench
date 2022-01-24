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
struct wil6210_vif {int /*<<< orphan*/  enable_tx_key_worker; int /*<<< orphan*/  probe_client_worker; TYPE_1__ p2p; int /*<<< orphan*/  disconnect_worker; int /*<<< orphan*/  scan_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_vif*) ; 

__attribute__((used)) static void FUNC3(struct wil6210_vif *vif)
{
	FUNC1(&vif->scan_timer);
	FUNC1(&vif->p2p.discovery_timer);
	FUNC0(&vif->disconnect_worker);
	FUNC0(&vif->p2p.discovery_expired_work);
	FUNC0(&vif->p2p.delayed_listen_work);
	FUNC2(vif);
	FUNC0(&vif->probe_client_worker);
	FUNC0(&vif->enable_tx_key_worker);
}