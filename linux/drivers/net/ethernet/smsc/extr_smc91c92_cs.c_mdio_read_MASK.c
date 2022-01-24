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
typedef  int u_int ;
struct net_device {unsigned int base_addr; } ;

/* Variables and functions */
 int MDIO_DATA_READ ; 
 int MDIO_DATA_WRITE0 ; 
 int MDIO_DATA_WRITE1 ; 
 int MDIO_SHIFT_CLK ; 
 unsigned int MGMT ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, int phy_id, int loc)
{
    unsigned int addr = dev->base_addr + MGMT;
    u_int cmd = (0x06<<10)|(phy_id<<5)|loc;
    int i, retval = 0;

    FUNC1(addr);
    for (i = 13; i >= 0; i--) {
	int dat = (cmd&(1<<i)) ? MDIO_DATA_WRITE1 : MDIO_DATA_WRITE0;
	FUNC2(dat, addr);
	FUNC2(dat | MDIO_SHIFT_CLK, addr);
    }
    for (i = 19; i > 0; i--) {
	FUNC2(0, addr);
	retval = (retval << 1) | ((FUNC0(addr) & MDIO_DATA_READ) != 0);
	FUNC2(MDIO_SHIFT_CLK, addr);
    }
    return (retval>>1) & 0xffff;
}