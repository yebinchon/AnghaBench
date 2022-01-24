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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ktime_t FUNC4(u32 nic_major, u32 nic_minor,
						 s32 correction)
{
	ktime_t kt;

	nic_minor = FUNC0(nic_minor, 4);
	correction = FUNC0(correction, 4);

	kt = FUNC2(nic_major, nic_minor);

	if (correction >= 0)
		kt = FUNC1(kt, (u64)correction);
	else
		kt = FUNC3(kt, (u64)-correction);
	return kt;
}