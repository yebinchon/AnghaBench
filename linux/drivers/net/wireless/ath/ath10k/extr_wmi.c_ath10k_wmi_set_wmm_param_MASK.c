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
struct wmi_wmm_params_arg {int /*<<< orphan*/  no_ack; int /*<<< orphan*/  acm; int /*<<< orphan*/  txop; int /*<<< orphan*/  aifs; int /*<<< orphan*/  cwmax; int /*<<< orphan*/  cwmin; } ;
struct wmi_wmm_params {void* no_ack; void* acm; void* txop; void* aifs; void* cwmax; void* cwmin; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct wmi_wmm_params *params,
			      const struct wmi_wmm_params_arg *arg)
{
	params->cwmin  = FUNC0(arg->cwmin);
	params->cwmax  = FUNC0(arg->cwmax);
	params->aifs   = FUNC0(arg->aifs);
	params->txop   = FUNC0(arg->txop);
	params->acm    = FUNC0(arg->acm);
	params->no_ack = FUNC0(arg->no_ack);
}