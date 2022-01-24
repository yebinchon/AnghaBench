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
struct mmc_data {unsigned int timeout_ns; } ;

/* Variables and functions */
 unsigned int NSEC_PER_MSEC ; 
 unsigned int SD_EMMC_CMD_TIMEOUT_DATA ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(struct mmc_data *data)
{
	unsigned int timeout = data->timeout_ns / NSEC_PER_MSEC;

	if (!timeout)
		return SD_EMMC_CMD_TIMEOUT_DATA;

	timeout = FUNC1(timeout);

	return FUNC0(timeout, 32768U); /* max. 2^15 ms */
}