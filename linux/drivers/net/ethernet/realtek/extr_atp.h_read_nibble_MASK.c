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

/* Variables and functions */
 scalar_t__ EOC ; 
 scalar_t__ PAR_DATA ; 
 scalar_t__ PAR_STATUS ; 
 scalar_t__ RdAddr ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline unsigned char FUNC2(short port, unsigned char offset)
{
	unsigned char retval;

	FUNC1(EOC+offset, port + PAR_DATA);
	FUNC1(RdAddr+offset, port + PAR_DATA);
	FUNC0(port + PAR_STATUS);	/* Settling time delay */
	retval = FUNC0(port + PAR_STATUS);
	FUNC1(EOC+offset, port + PAR_DATA);

	return retval;
}