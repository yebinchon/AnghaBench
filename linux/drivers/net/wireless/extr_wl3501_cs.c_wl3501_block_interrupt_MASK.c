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
struct wl3501_card {scalar_t__ base_addr; } ;

/* Variables and functions */
 int WL3501_GCR_ECINT ; 
 int WL3501_GCR_ENECINT ; 
 int WL3501_GCR_INT2EC ; 
 scalar_t__ WL3501_NIC_GCR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct wl3501_card *this)
{
	u8 old = FUNC0(this->base_addr + WL3501_NIC_GCR);
	u8 new = old & (~(WL3501_GCR_ECINT | WL3501_GCR_INT2EC |
			WL3501_GCR_ENECINT));

	FUNC1(new, this->base_addr + WL3501_NIC_GCR);
	return old & WL3501_GCR_ENECINT;
}