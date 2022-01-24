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
struct cx18 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cx18*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx18*,int,int) ; 

void FUNC2(struct cx18 *cx, u32 addr)
{
	u32 val;
	val = FUNC0(cx, 0xD000F8);
	val = (val & ~0x1f00) | ((addr >> 17) & 0x1f00);
	FUNC1(cx, val, 0xD000F8);
}