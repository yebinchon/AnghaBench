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
struct net_device {int base_addr; } ;

/* Variables and functions */
 unsigned int AUTOINCflag ; 
 int /*<<< orphan*/  COM9026_REG_RW_MEMDATA ; 
 int /*<<< orphan*/  COM9026_REG_W_ADDR_HI ; 
 int /*<<< orphan*/  COM9026_REG_W_ADDR_LO ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev, unsigned offset,
			     unsigned length, char *dest)
{
	int ioaddr = dev->base_addr;

	FUNC0((offset >> 8) | AUTOINCflag, ioaddr, COM9026_REG_W_ADDR_HI);
	FUNC0(offset & 0xff, ioaddr,COM9026_REG_W_ADDR_LO);

	while (length--)
#ifdef ONE_AT_A_TIME_TX
		put_buffer_byte(dev, offset++, *(dest++));
#else
		FUNC0(*(dest++), ioaddr, COM9026_REG_RW_MEMDATA);
#endif
}