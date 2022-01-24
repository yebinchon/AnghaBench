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
typedef  int u32 ;
struct wmi_peer_assoc_complete_arg {int dummy; } ;
struct wmi_10_2_peer_assoc_complete_cmd {int /*<<< orphan*/  info0; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WMI_PEER_ASSOC_INFO0_MAX_MCS_IDX ; 
 int /*<<< orphan*/  WMI_PEER_ASSOC_INFO0_MAX_NSS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,void*,struct wmi_peer_assoc_complete_arg const*) ; 

__attribute__((used)) static void
FUNC3(struct ath10k *ar, void *buf,
				const struct wmi_peer_assoc_complete_arg *arg)
{
	struct wmi_10_2_peer_assoc_complete_cmd *cmd = buf;
	int max_mcs, max_nss;
	u32 info0;

	/* TODO: Is using max values okay with firmware? */
	max_mcs = 0xf;
	max_nss = 0xf;

	info0 = FUNC0(max_mcs, WMI_PEER_ASSOC_INFO0_MAX_MCS_IDX) |
		FUNC0(max_nss, WMI_PEER_ASSOC_INFO0_MAX_NSS);

	FUNC2(ar, buf, arg);
	cmd->info0 = FUNC1(info0);
}