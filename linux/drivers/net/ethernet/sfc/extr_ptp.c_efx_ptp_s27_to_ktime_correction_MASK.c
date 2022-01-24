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
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ S27_MINOR_MAX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static ktime_t FUNC1(u32 nic_major, u32 nic_minor,
					       s32 correction)
{
	/* Apply the correction and deal with carry */
	nic_minor += correction;
	if ((s32)nic_minor < 0) {
		nic_minor += S27_MINOR_MAX;
		nic_major--;
	} else if (nic_minor >= S27_MINOR_MAX) {
		nic_minor -= S27_MINOR_MAX;
		nic_major++;
	}

	return FUNC0(nic_major, nic_minor);
}