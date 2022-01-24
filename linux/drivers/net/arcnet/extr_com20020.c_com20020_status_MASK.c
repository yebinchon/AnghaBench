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
typedef  int /*<<< orphan*/  u_int ;
struct net_device {int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  COM20020_REG_R_DIAGSTAT ; 
 int /*<<< orphan*/  COM20020_REG_R_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev)
{
	u_int ioaddr = dev->base_addr;

	return FUNC0(ioaddr, COM20020_REG_R_STATUS) +
		(FUNC0(ioaddr, COM20020_REG_R_DIAGSTAT) << 8);
}