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
struct net_device {int dummy; } ;

/* Variables and functions */
 int EnetAddressOffset ; 
 int /*<<< orphan*/  SROMAddressBits ; 
 unsigned char FUNC0 (unsigned short) ; 
 unsigned short FUNC1 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev, unsigned char *ea)
{
	int i;
	unsigned short data;

	for (i = 0; i < 6; i++)
		{
			FUNC2(dev);
			data = FUNC1(dev, i + EnetAddressOffset/2, SROMAddressBits);
			ea[2*i]   = FUNC0(data & 0x0ff);
			ea[2*i+1] = FUNC0((data >> 8) & 0x0ff);
		}
}