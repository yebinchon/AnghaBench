#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ab3100 {int chip_id; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  setting; int /*<<< orphan*/  abreg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* ab3100_init_settings ; 
 int FUNC1 (struct ab3100*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ab3100*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct ab3100 *ab3100)
{
	int err = 0;
	int i;

	for (i = 0; i < FUNC0(ab3100_init_settings); i++) {
		err = FUNC1(ab3100,
					  ab3100_init_settings[i].abreg,
					  ab3100_init_settings[i].setting);
		if (err)
			goto exit_no_setup;
	}

	/*
	 * Special trick to make the AB3100 use the 32kHz clock (RTC)
	 * bit 3 in test register 0x02 is a special, undocumented test
	 * register bit that only exist in AB3100 P1E
	 */
	if (ab3100->chip_id == 0xc4) {
		FUNC3(ab3100->dev,
			 "AB3100 P1E variant detected forcing chip to 32KHz\n");
		err = FUNC2(ab3100,
			0x02, 0x08);
	}

 exit_no_setup:
	return err;
}