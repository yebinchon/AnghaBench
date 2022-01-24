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
typedef  int u16 ;
struct work_struct {int dummy; } ;
struct ptp_clock_event {int /*<<< orphan*/  timestamp; scalar_t__ index; int /*<<< orphan*/  type; } ;
struct mv88e6xxx_chip {int /*<<< orphan*/  tai_event_work; int /*<<< orphan*/  ptp_clock; int /*<<< orphan*/  tstamp_tc; int /*<<< orphan*/  dev; } ;
struct delayed_work {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  MV88E6XXX_TAI_EVENT_STATUS ; 
 int MV88E6XXX_TAI_EVENT_STATUS_ERROR ; 
 int MV88E6XXX_TAI_EVENT_STATUS_VALID ; 
 int /*<<< orphan*/  PTP_CLOCK_EXTTS ; 
 int /*<<< orphan*/  TAI_EVENT_WORK_INTERVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct mv88e6xxx_chip* FUNC3 (struct delayed_work*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct mv88e6xxx_chip*) ; 
 int FUNC6 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct ptp_clock_event*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 struct delayed_work* FUNC11 (struct work_struct*) ; 

__attribute__((used)) static void FUNC12(struct work_struct *ugly)
{
	struct delayed_work *dw = FUNC11(ugly);
	struct mv88e6xxx_chip *chip = FUNC3(dw);
	struct ptp_clock_event ev;
	u16 status[4];
	u32 raw_ts;
	int err;

	FUNC4(chip);
	err = FUNC6(chip, MV88E6XXX_TAI_EVENT_STATUS,
				 status, FUNC0(status));
	FUNC5(chip);

	if (err) {
		FUNC1(chip->dev, "failed to read TAI status register\n");
		return;
	}
	if (status[0] & MV88E6XXX_TAI_EVENT_STATUS_ERROR) {
		FUNC2(chip->dev, "missed event capture\n");
		return;
	}
	if (!(status[0] & MV88E6XXX_TAI_EVENT_STATUS_VALID))
		goto out;

	raw_ts = ((u32)status[2] << 16) | status[1];

	/* Clear the valid bit so the next timestamp can come in */
	status[0] &= ~MV88E6XXX_TAI_EVENT_STATUS_VALID;
	FUNC4(chip);
	err = FUNC7(chip, MV88E6XXX_TAI_EVENT_STATUS, status[0]);
	FUNC5(chip);

	/* This is an external timestamp */
	ev.type = PTP_CLOCK_EXTTS;

	/* We only have one timestamping channel. */
	ev.index = 0;
	FUNC4(chip);
	ev.timestamp = FUNC10(&chip->tstamp_tc, raw_ts);
	FUNC5(chip);

	FUNC8(chip->ptp_clock, &ev);
out:
	FUNC9(&chip->tai_event_work, TAI_EVENT_WORK_INTERVAL);
}