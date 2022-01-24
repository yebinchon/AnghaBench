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
struct wmi_peer_assoc_complete_arg {int dummy; } ;
struct wmi_main_peer_assoc_complete_cmd {int /*<<< orphan*/  peer_ht_info; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath10k*,void*,struct wmi_peer_assoc_complete_arg const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct ath10k *ar, void *buf,
				const struct wmi_peer_assoc_complete_arg *arg)
{
	struct wmi_main_peer_assoc_complete_cmd *cmd = buf;

	FUNC0(ar, buf, arg);
	FUNC1(cmd->peer_ht_info, 0, sizeof(cmd->peer_ht_info));
}