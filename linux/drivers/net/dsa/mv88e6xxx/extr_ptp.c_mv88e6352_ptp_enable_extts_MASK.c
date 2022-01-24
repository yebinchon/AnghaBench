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
struct TYPE_2__ {int flags; int /*<<< orphan*/  index; } ;
struct ptp_clock_request {TYPE_1__ extts; } ;
struct mv88e6xxx_chip {int /*<<< orphan*/  tai_event_work; int /*<<< orphan*/  ptp_clock; } ;

/* Variables and functions */
 int EBUSY ; 
 int MV88E6352_G2_SCRATCH_GPIO_PCTL_EVREQ ; 
 int MV88E6352_G2_SCRATCH_GPIO_PCTL_GPIO ; 
 int /*<<< orphan*/  PTP_CLOCK_EXTTS ; 
 int /*<<< orphan*/  PTP_PF_EXTTS ; 
 int PTP_RISING_EDGE ; 
 int /*<<< orphan*/  TAI_EVENT_WORK_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv88e6xxx_chip*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mv88e6xxx_chip *chip,
				      struct ptp_clock_request *rq, int on)
{
	int rising = (rq->extts.flags & PTP_RISING_EDGE);
	int func;
	int pin;
	int err;

	pin = FUNC5(chip->ptp_clock, PTP_PF_EXTTS, rq->extts.index);

	if (pin < 0)
		return -EBUSY;

	FUNC3(chip);

	if (on) {
		func = MV88E6352_G2_SCRATCH_GPIO_PCTL_EVREQ;

		err = FUNC2(chip, pin, func, true);
		if (err)
			goto out;

		FUNC6(&chip->tai_event_work,
				      TAI_EVENT_WORK_INTERVAL);

		err = FUNC1(chip, PTP_CLOCK_EXTTS, rising);
	} else {
		func = MV88E6352_G2_SCRATCH_GPIO_PCTL_GPIO;

		err = FUNC2(chip, pin, func, true);

		FUNC0(&chip->tai_event_work);
	}

out:
	FUNC4(chip);

	return err;
}