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
struct sd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sd*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sd*,int,int) ; 

__attribute__((used)) static void FUNC2(struct sd *sd,
			u8 reg,
			u8 value,
			u8 mask)
{
	int rc;
	u8 oldval;

	value &= mask;			/* Enforce mask on value */
	rc = FUNC0(sd, reg);
	if (rc < 0)
		return;
	oldval = rc & ~mask;		/* Clear the masked bits */
	value |= oldval;		/* Set the desired bits */
	FUNC1(sd, reg, value);
}