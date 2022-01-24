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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int /*<<< orphan*/  write_verify_failed; } ;
struct qcaspi {TYPE_1__ stats; } ;

/* Variables and functions */
 int FUNC0 (struct qcaspi*,scalar_t__,scalar_t__) ; 
 int FUNC1 (struct qcaspi*,scalar_t__,scalar_t__*) ; 

int
FUNC2(struct qcaspi *qca, u16 reg, u16 value, int retry)
{
	int ret, i = 0;
	u16 confirmed;

	do {
		ret = FUNC0(qca, reg, value);
		if (ret)
			return ret;

		if (!retry)
			return 0;

		ret = FUNC1(qca, reg, &confirmed);
		if (ret)
			return ret;

		ret = confirmed != value;
		if (!ret)
			return 0;

		i++;
		qca->stats.write_verify_failed++;

	} while (i <= retry);

	return ret;
}