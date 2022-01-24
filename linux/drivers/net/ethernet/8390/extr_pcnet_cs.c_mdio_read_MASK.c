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

/* Variables and functions */
 int MDIO_DATA_READ ; 
 int MDIO_DATA_WRITE0 ; 
 int MDIO_DATA_WRITE1 ; 
 int MDIO_MASK ; 
 int MDIO_SHIFT_CLK ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 

__attribute__((used)) static int FUNC3(unsigned int addr, int phy_id, int loc)
{
    u_int cmd = (0x06<<10)|(phy_id<<5)|loc;
    int i, retval = 0, mask = FUNC0(addr) & MDIO_MASK;

    FUNC1(addr);
    for (i = 13; i >= 0; i--) {
	int dat = (cmd&(1<<i)) ? MDIO_DATA_WRITE1 : MDIO_DATA_WRITE0;
	FUNC2(mask | dat, addr);
	FUNC2(mask | dat | MDIO_SHIFT_CLK, addr);
    }
    for (i = 19; i > 0; i--) {
	FUNC2(mask, addr);
	retval = (retval << 1) | ((FUNC0(addr) & MDIO_DATA_READ) != 0);
	FUNC2(mask | MDIO_SHIFT_CLK, addr);
    }
    return (retval>>1) & 0xffff;
}