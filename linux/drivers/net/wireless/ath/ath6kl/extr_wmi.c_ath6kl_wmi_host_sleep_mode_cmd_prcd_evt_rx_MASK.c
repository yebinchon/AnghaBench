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
struct wmi {struct ath6kl* parent_dev; } ;
struct ath6kl_vif {int /*<<< orphan*/  flags; } ;
struct ath6kl {int /*<<< orphan*/  event_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_SLEEP_MODE_CMD_PROCESSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct wmi *wmi,
						      struct ath6kl_vif *vif)
{
	struct ath6kl *ar = wmi->parent_dev;

	FUNC0(HOST_SLEEP_MODE_CMD_PROCESSED, &vif->flags);
	FUNC1(&ar->event_wq);

	return 0;
}