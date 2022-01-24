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
struct sk_buff {char* data; } ;
struct net_device {long base_addr; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int dmaing; int ne2k_flags; int /*<<< orphan*/  irqlock; } ;

/* Variables and functions */
 int E8390_NODMA ; 
 int E8390_PAGE0 ; 
 int E8390_RREAD ; 
 int E8390_START ; 
 scalar_t__ EN0_ISR ; 
 scalar_t__ EN0_RCNTHI ; 
 scalar_t__ EN0_RCNTLO ; 
 scalar_t__ EN0_RSARHI ; 
 scalar_t__ EN0_RSARLO ; 
 int ENISR_RDC ; 
 scalar_t__ NE_BASE ; 
 scalar_t__ NE_CMD ; 
 scalar_t__ NE_DATAPORT ; 
 int ONLY_16BIT_IO ; 
 int ONLY_32BIT_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ ei_status ; 
 char FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev, int count,
				 struct sk_buff *skb, int ring_offset)
{
	long nic_base = dev->base_addr;
	char *buf = skb->data;

	/* This *shouldn't* happen. If it does, it's the last thing you'll see */
	if (ei_status.dmaing) {
		FUNC5(dev, "DMAing conflict in ne2k_pci_block_input "
			   "[DMAstat:%d][irqlock:%d].\n",
			   ei_status.dmaing, ei_status.irqlock);
		return;
	}
	ei_status.dmaing |= 0x01;
	if (ei_status.ne2k_flags & ONLY_32BIT_IO)
		count = (count + 3) & 0xFFFC;
	FUNC6(E8390_NODMA+E8390_PAGE0+E8390_START, nic_base+ NE_CMD);
	FUNC6(count & 0xff, nic_base + EN0_RCNTLO);
	FUNC6(count >> 8, nic_base + EN0_RCNTHI);
	FUNC6(ring_offset & 0xff, nic_base + EN0_RSARLO);
	FUNC6(ring_offset >> 8, nic_base + EN0_RSARHI);
	FUNC6(E8390_RREAD+E8390_START, nic_base + NE_CMD);

	if (ei_status.ne2k_flags & ONLY_16BIT_IO) {
		FUNC3(NE_BASE + NE_DATAPORT,buf,count>>1);
		if (count & 0x01) {
			buf[count-1] = FUNC1(NE_BASE + NE_DATAPORT);
		}
	} else {
		FUNC2(NE_BASE + NE_DATAPORT, buf, count>>2);
		if (count & 3) {
			buf += count & ~3;
			if (count & 2) {
				__le16 *b = (__le16 *)buf;

				*b++ = FUNC0(FUNC4(NE_BASE + NE_DATAPORT));
				buf = (char *)b;
			}
			if (count & 1)
				*buf = FUNC1(NE_BASE + NE_DATAPORT);
		}
	}

	FUNC6(ENISR_RDC, nic_base + EN0_ISR);	/* Ack intr. */
	ei_status.dmaing &= ~0x01;
}