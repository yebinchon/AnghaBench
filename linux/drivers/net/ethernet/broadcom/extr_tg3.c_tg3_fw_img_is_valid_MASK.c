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
struct tg3 {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tg3*,int,int*) ; 

__attribute__((used)) static int FUNC1(struct tg3 *tp, u32 offset)
{
	u32 val;

	if (FUNC0(tp, offset, &val) ||
	    (val & 0xfc000000) != 0x0c000000 ||
	    FUNC0(tp, offset + 4, &val) ||
	    val != 0)
		return 0;

	return 1;
}