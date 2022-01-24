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
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath10k*,void*,struct wmi_peer_assoc_complete_arg const*) ; 

__attribute__((used)) static void
FUNC1(struct ath10k *ar, void *buf,
				const struct wmi_peer_assoc_complete_arg *arg)
{
	FUNC0(ar, buf, arg);
}