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
struct sk_buff {char* data; } ;
struct net_device {unsigned int base_addr; } ;
struct ei_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ AXNET_CMD ; 
 scalar_t__ AXNET_DATAPORT ; 
 int E8390_RREAD ; 
 int E8390_START ; 
 scalar_t__ EN0_RSARHI ; 
 scalar_t__ EN0_RSARLO ; 
 char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int) ; 
 struct ei_device* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct ei_device*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, int count,
			struct sk_buff *skb, int ring_offset)
{
    unsigned int nic_base = dev->base_addr;
    struct ei_device *ei_local = FUNC3(dev);
    int xfer_count = count;
    char *buf = skb->data;

    if ((FUNC4(ei_local)) && (count != 4))
	FUNC2(dev, "[bi=%d]\n", count+4);
    FUNC5(ring_offset & 0xff, nic_base + EN0_RSARLO);
    FUNC5(ring_offset >> 8, nic_base + EN0_RSARHI);
    FUNC5(E8390_RREAD+E8390_START, nic_base + AXNET_CMD);

    FUNC1(nic_base + AXNET_DATAPORT,buf,count>>1);
    if (count & 0x01)
	buf[count-1] = FUNC0(nic_base + AXNET_DATAPORT), xfer_count++;

}