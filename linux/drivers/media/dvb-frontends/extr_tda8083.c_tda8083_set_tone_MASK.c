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
struct tda8083_state {int dummy; } ;
typedef  enum fe_sec_tone_mode { ____Placeholder_fe_sec_tone_mode } fe_sec_tone_mode ;

/* Variables and functions */
 int EINVAL ; 
#define  SEC_TONE_OFF 129 
#define  SEC_TONE_ON 128 
 int FUNC0 (struct tda8083_state*,int,int) ; 

__attribute__((used)) static int FUNC1(struct tda8083_state *state,
			    enum fe_sec_tone_mode tone)
{
	FUNC0 (state, 0x26, 0xf1);

	switch (tone) {
	case SEC_TONE_OFF:
		return FUNC0 (state, 0x29, 0x00);
	case SEC_TONE_ON:
		return FUNC0 (state, 0x29, 0x80);
	default:
		return -EINVAL;
	}
}