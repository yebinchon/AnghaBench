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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  out_of_int_time; int /*<<< orphan*/  hpi_en; } ;
struct mmc_card {TYPE_1__ ext_csd; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int const FUNC0 (int /*<<< orphan*/ ) ; 
#define  R1_STATE_IDLE 132 
#define  R1_STATE_PRG 131 
#define  R1_STATE_READY 130 
#define  R1_STATE_STBY 129 
#define  R1_STATE_TRAN 128 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mmc_card*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mmc_card*,int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 

int FUNC9(struct mmc_card *card)
{
	int err;
	u32 status;
	unsigned long prg_wait;

	if (!card->ext_csd.hpi_en) {
		FUNC7("%s: HPI enable bit unset\n", FUNC1(card->host));
		return 1;
	}

	err = FUNC3(card, &status);
	if (err) {
		FUNC6("%s: Get card status fail\n", FUNC1(card->host));
		goto out;
	}

	switch (FUNC0(status)) {
	case R1_STATE_IDLE:
	case R1_STATE_READY:
	case R1_STATE_STBY:
	case R1_STATE_TRAN:
		/*
		 * In idle and transfer states, HPI is not needed and the caller
		 * can issue the next intended command immediately
		 */
		goto out;
	case R1_STATE_PRG:
		break;
	default:
		/* In all other states, it's illegal to issue HPI */
		FUNC5("%s: HPI cannot be sent. Card state=%d\n",
			FUNC1(card->host), FUNC0(status));
		err = -EINVAL;
		goto out;
	}

	err = FUNC2(card, &status);
	if (err)
		goto out;

	prg_wait = jiffies + FUNC4(card->ext_csd.out_of_int_time);
	do {
		err = FUNC3(card, &status);

		if (!err && FUNC0(status) == R1_STATE_TRAN)
			break;
		if (FUNC8(jiffies, prg_wait))
			err = -ETIMEDOUT;
	} while (!err);

out:
	return err;
}