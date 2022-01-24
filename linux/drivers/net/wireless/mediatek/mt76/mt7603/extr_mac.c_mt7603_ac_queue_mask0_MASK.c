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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static u32
FUNC2(u32 mask)
{
	u32 ret = 0;

	ret |= FUNC1(3, 0) * !!(mask & FUNC0(0));
	ret |= FUNC1(8, 5) * !!(mask & FUNC0(1));
	ret |= FUNC1(13, 10) * !!(mask & FUNC0(2));
	ret |= FUNC1(19, 16) * !!(mask & FUNC0(3));
	return ret;
}