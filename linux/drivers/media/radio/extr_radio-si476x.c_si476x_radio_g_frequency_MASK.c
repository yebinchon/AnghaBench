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
struct v4l2_frequency {scalar_t__ tuner; scalar_t__ type; int /*<<< orphan*/  frequency; } ;
struct si476x_rsq_status_report {int /*<<< orphan*/  readfreq; } ;
struct si476x_rsq_status_args {int primary; int rsqack; int attune; int cancel; int stcack; } ;
struct si476x_radio {int /*<<< orphan*/  core; TYPE_1__* ops; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* rsq_status ) (int /*<<< orphan*/ ,struct si476x_rsq_status_args*,struct si476x_rsq_status_report*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct si476x_rsq_status_args*,struct si476x_rsq_status_report*) ; 
 struct si476x_radio* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
			      struct v4l2_frequency *f)
{
	int err;
	struct si476x_radio *radio = FUNC4(file);

	if (f->tuner != 0 ||
	    f->type  != V4L2_TUNER_RADIO)
		return -EINVAL;

	FUNC0(radio->core);

	if (radio->ops->rsq_status) {
		struct si476x_rsq_status_report report;
		struct si476x_rsq_status_args   args = {
			.primary	= false,
			.rsqack		= false,
			.attune		= true,
			.cancel		= false,
			.stcack		= false,
		};

		err = radio->ops->rsq_status(radio->core, &args, &report);
		if (!err)
			f->frequency = FUNC2(radio->core,
						      report.readfreq);
	} else {
		err = -EINVAL;
	}

	FUNC1(radio->core);

	return err;
}