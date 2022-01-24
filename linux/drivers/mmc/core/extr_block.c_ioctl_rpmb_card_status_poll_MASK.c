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
typedef  scalar_t__ u32 ;
struct mmc_card {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ R1_STATE_PRG ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct mmc_card*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct mmc_card *card, u32 *status,
				       u32 retries_max)
{
	int err;
	u32 retry_count = 0;

	if (!status || !retries_max)
		return -EINVAL;

	do {
		err = FUNC2(card, status, 5);
		if (err)
			break;

		if (!FUNC1(*status) &&
				(FUNC0(*status) != R1_STATE_PRG))
			break; /* RPMB programming operation complete */

		/*
		 * Rechedule to give the MMC device a chance to continue
		 * processing the previous command without being polled too
		 * frequently.
		 */
		FUNC3(1000, 5000);
	} while (++retry_count < retries_max);

	if (retry_count == retries_max)
		err = -EPERM;

	return err;
}