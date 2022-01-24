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
struct ath6kl_vif {scalar_t__ ch_hint; int /*<<< orphan*/  wep_key_list; scalar_t__ def_txkey_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath6kl_vif*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct ath6kl_vif *vif)
{
	FUNC0(vif);
	vif->def_txkey_index = 0;
	FUNC1(vif->wep_key_list, 0, sizeof(vif->wep_key_list));
	vif->ch_hint = 0;
}