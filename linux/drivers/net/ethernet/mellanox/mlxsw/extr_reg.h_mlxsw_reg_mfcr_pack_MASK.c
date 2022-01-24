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
typedef  enum mlxsw_reg_mfcr_pwm_frequency { ____Placeholder_mlxsw_reg_mfcr_pwm_frequency } mlxsw_reg_mfcr_pwm_frequency ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mfcr ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static inline void
FUNC2(char *payload,
		    enum mlxsw_reg_mfcr_pwm_frequency pwm_frequency)
{
	FUNC0(mfcr, payload);
	FUNC1(payload, pwm_frequency);
}