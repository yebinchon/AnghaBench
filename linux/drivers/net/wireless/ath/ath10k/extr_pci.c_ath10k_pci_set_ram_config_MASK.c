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
typedef  int /*<<< orphan*/  u32 ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FW_RAM_CONFIG_ADDRESS ; 
 scalar_t__ SOC_CORE_BASE_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ath10k *ar, u32 config)
{
	u32 val;

	FUNC1(ar, SOC_CORE_BASE_ADDRESS +
			   FW_RAM_CONFIG_ADDRESS, config);

	val = FUNC0(ar, SOC_CORE_BASE_ADDRESS +
				FW_RAM_CONFIG_ADDRESS);
	if (val != config) {
		FUNC2(ar, "failed to set RAM config from 0x%x to 0x%x\n",
			    val, config);
		return -EIO;
	}

	return 0;
}