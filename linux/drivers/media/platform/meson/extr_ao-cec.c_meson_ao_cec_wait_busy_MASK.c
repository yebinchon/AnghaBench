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
struct meson_ao_cec_device {scalar_t__ base; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int CEC_RW_BUS_BUSY ; 
 scalar_t__ CEC_RW_REG ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static inline int FUNC4(struct meson_ao_cec_device *ao_cec)
{
	ktime_t timeout = FUNC0(FUNC2(), 5000);

	while (FUNC3(ao_cec->base + CEC_RW_REG) & CEC_RW_BUS_BUSY) {
		if (FUNC1(FUNC2(), timeout) > 0)
			return -ETIMEDOUT;
	}

	return 0;
}