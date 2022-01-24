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
struct c2port_device {int dummy; } ;

/* Variables and functions */
 int C2CK ; 
 int C2D ; 
 int /*<<< orphan*/  DIR_PORT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  update_lock ; 

__attribute__((used)) static void FUNC4(struct c2port_device *dev, int status)
{
	u8 v;

	FUNC1(&update_lock);

	v = FUNC0(DIR_PORT);

	/* 0 = input, 1 = output */
	if (status)
		FUNC3(v | (C2D | C2CK), DIR_PORT);
	else
		/* When access is "off" is important that both lines are set
		 * as inputs or hi-impedance */
		FUNC3(v & ~(C2D | C2CK), DIR_PORT);

	FUNC2(&update_lock);
}