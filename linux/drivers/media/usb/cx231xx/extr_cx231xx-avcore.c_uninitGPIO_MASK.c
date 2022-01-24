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
typedef  int /*<<< orphan*/  u8 ;
struct cx231xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VRT_SET_REGISTER ; 
 int /*<<< orphan*/  Vbi ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx231xx*,int,int) ; 

void FUNC3(struct cx231xx *dev)
{
	u8 value[4] = { 0, 0, 0, 0 };

	FUNC0(dev, 0, Vbi);
	FUNC2(dev, 0x07, 0x14);
	FUNC1(dev, VRT_SET_REGISTER,
			0x68, value, 4);
}