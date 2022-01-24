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
struct si476x_tune_freq_args {int dummy; } ;
struct si476x_core {int revision; } ;
struct TYPE_2__ {int (* am_tune_freq ) (struct si476x_core*,struct si476x_tune_freq_args*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SI476X_REVISION_A30 ; 
 TYPE_1__* si476x_cmds_vtable ; 
 int FUNC1 (struct si476x_core*,struct si476x_tune_freq_args*) ; 

int FUNC2(struct si476x_core *core,
				 struct si476x_tune_freq_args *args)
{
	FUNC0(core->revision > SI476X_REVISION_A30 ||
	       core->revision == -1);
	return si476x_cmds_vtable[core->revision].am_tune_freq(core, args);
}