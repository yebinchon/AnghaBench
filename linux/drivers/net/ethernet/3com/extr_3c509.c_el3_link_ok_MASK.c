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
typedef  int u16 ;
struct net_device {int base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ WN4_MEDIA ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int
FUNC2(struct net_device *dev)
{
	int ioaddr = dev->base_addr;
	u16 tmp;

	FUNC0(4);
	tmp = FUNC1(ioaddr + WN4_MEDIA);
	FUNC0(1);
	return tmp & (1<<11);
}