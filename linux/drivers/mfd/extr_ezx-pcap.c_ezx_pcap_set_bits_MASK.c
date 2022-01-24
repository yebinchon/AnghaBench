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
typedef  int u32 ;
struct pcap_chip {int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int PCAP_REGISTER_ADDRESS_SHIFT ; 
 int PCAP_REGISTER_READ_OP_BIT ; 
 int PCAP_REGISTER_VALUE_MASK ; 
 int PCAP_REGISTER_WRITE_OP_BIT ; 
 int FUNC0 (struct pcap_chip*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct pcap_chip *pcap, u8 reg_num, u32 mask, u32 val)
{
	unsigned long flags;
	int ret;
	u32 tmp = PCAP_REGISTER_READ_OP_BIT |
		(reg_num << PCAP_REGISTER_ADDRESS_SHIFT);

	FUNC1(&pcap->io_lock, flags);
	ret = FUNC0(pcap, &tmp);
	if (ret)
		goto out_unlock;

	tmp &= (PCAP_REGISTER_VALUE_MASK & ~mask);
	tmp |= (val & mask) | PCAP_REGISTER_WRITE_OP_BIT |
		(reg_num << PCAP_REGISTER_ADDRESS_SHIFT);

	ret = FUNC0(pcap, &tmp);
out_unlock:
	FUNC2(&pcap->io_lock, flags);

	return ret;
}