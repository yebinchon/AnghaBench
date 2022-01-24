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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mxl111sf_demod_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  V6_SNR_RB_LSB_REG ; 
 int /*<<< orphan*/  V6_SNR_RB_MSB_REG ; 
 int FUNC1 (struct mxl111sf_demod_state*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct mxl111sf_demod_state *state,
				   u16 *snr)
{
	u8 val1, val2;
	int ret;

	*snr = 0;

	ret = FUNC1(state, V6_SNR_RB_LSB_REG, &val1);
	if (FUNC2(ret))
		goto fail;
	ret = FUNC1(state, V6_SNR_RB_MSB_REG, &val2);
	if (FUNC2(ret))
		goto fail;

	*snr = FUNC0(val1 | ((val2 & 0x03) << 8));
fail:
	return ret;
}