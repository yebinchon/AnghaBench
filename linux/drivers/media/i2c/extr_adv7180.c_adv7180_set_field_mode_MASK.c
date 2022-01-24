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
struct adv7180_state {scalar_t__ field; TYPE_1__* chip_info; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int ADV7180_FLAG_I2P ; 
 int ADV7180_FLAG_MIPI_CSI2 ; 
 scalar_t__ V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct adv7180_state*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adv7180_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct adv7180_state *state)
{
	if (!(state->chip_info->flags & ADV7180_FLAG_I2P))
		return 0;

	if (state->field == V4L2_FIELD_NONE) {
		if (state->chip_info->flags & ADV7180_FLAG_MIPI_CSI2) {
			FUNC0(state, 0x01, 0x20);
			FUNC0(state, 0x02, 0x28);
			FUNC0(state, 0x03, 0x38);
			FUNC0(state, 0x04, 0x30);
			FUNC0(state, 0x05, 0x30);
			FUNC0(state, 0x06, 0x80);
			FUNC0(state, 0x07, 0x70);
			FUNC0(state, 0x08, 0x50);
		}
		FUNC1(state, 0xa3, 0x00);
		FUNC1(state, 0x5b, 0x00);
		FUNC1(state, 0x55, 0x80);
	} else {
		if (state->chip_info->flags & ADV7180_FLAG_MIPI_CSI2) {
			FUNC0(state, 0x01, 0x18);
			FUNC0(state, 0x02, 0x18);
			FUNC0(state, 0x03, 0x30);
			FUNC0(state, 0x04, 0x20);
			FUNC0(state, 0x05, 0x28);
			FUNC0(state, 0x06, 0x40);
			FUNC0(state, 0x07, 0x58);
			FUNC0(state, 0x08, 0x30);
		}
		FUNC1(state, 0xa3, 0x70);
		FUNC1(state, 0x5b, 0x80);
		FUNC1(state, 0x55, 0x00);
	}

	return 0;
}