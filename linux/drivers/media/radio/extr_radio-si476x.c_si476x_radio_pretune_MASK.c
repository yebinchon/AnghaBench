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
struct si476x_tune_freq_args {int zifsr; int hd; void* freq; int /*<<< orphan*/  antcap; int /*<<< orphan*/  smoothmetrics; int /*<<< orphan*/  tunemode; int /*<<< orphan*/  injside; } ;
struct si476x_radio {int /*<<< orphan*/  core; TYPE_1__* ops; } ;
typedef  enum si476x_func { ____Placeholder_si476x_func } si476x_func ;
struct TYPE_2__ {int (* tune_freq ) (int /*<<< orphan*/ ,struct si476x_tune_freq_args*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int FREQ_MUL ; 
#define  SI476X_FUNC_AM_RECEIVER 129 
#define  SI476X_FUNC_FM_RECEIVER 128 
 int /*<<< orphan*/  SI476X_INJSIDE_AUTO ; 
 int /*<<< orphan*/  SI476X_SM_INITIALIZE_AUDIO ; 
 int /*<<< orphan*/  SI476X_TM_VALIDATED_NORMAL_TUNE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct si476x_tune_freq_args*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct si476x_tune_freq_args*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,double) ; 

__attribute__((used)) static int FUNC4(struct si476x_radio *radio,
				enum si476x_func func)
{
	int retval;

	struct si476x_tune_freq_args args = {
		.zifsr		= false,
		.hd		= false,
		.injside	= SI476X_INJSIDE_AUTO,
		.tunemode	= SI476X_TM_VALIDATED_NORMAL_TUNE,
		.smoothmetrics	= SI476X_SM_INITIALIZE_AUDIO,
		.antcap		= 0,
	};

	switch (func) {
	case SI476X_FUNC_FM_RECEIVER:
		args.freq = FUNC3(radio->core,
					   92 * FREQ_MUL);
		retval = radio->ops->tune_freq(radio->core, &args);
		break;
	case SI476X_FUNC_AM_RECEIVER:
		args.freq = FUNC3(radio->core,
					   0.6 * FREQ_MUL);
		retval = radio->ops->tune_freq(radio->core, &args);
		break;
	default:
		FUNC0(1, "Unexpected tuner function value\n");
		retval = -EINVAL;
	}

	return retval;
}