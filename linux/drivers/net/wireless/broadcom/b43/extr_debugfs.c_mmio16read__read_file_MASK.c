#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct b43_wldev {TYPE_1__* dfsentry; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {unsigned int mmio16read_next; } ;

/* Variables and functions */
 unsigned int B43_MAX_MMIO_ACCESS ; 
 int /*<<< orphan*/  EDESTADDRREQ ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(struct b43_wldev *dev,
				     char *buf, size_t bufsize)
{
	ssize_t count = 0;
	unsigned int addr;
	u16 val;

	addr = dev->dfsentry->mmio16read_next;
	if (addr > B43_MAX_MMIO_ACCESS)
		return -EDESTADDRREQ;

	val = FUNC0(dev, addr);
	FUNC1("0x%04X\n", val);

	return count;
}