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
struct net_device {scalar_t__ base_addr; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, int c)
{
	/* returns true if it stayed c */
	/* this uses base+6, but it's ok */
	int i;

	/* twenty second or so total */

	for(i=0;i<200000;i++) {
		if ( c != FUNC0(dev->base_addr+6) ) return 0;
		FUNC1(100);
	}
	return 1; /* timed out */
}