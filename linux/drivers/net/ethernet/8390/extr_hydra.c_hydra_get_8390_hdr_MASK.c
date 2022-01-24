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
struct e8390_pkt_hdr {int dummy; } ;

/* Variables and functions */
 int HYDRA_NIC_BASE ; 
 int NESM_START_PG ; 
 short FUNC0 (short) ; 
 void* FUNC1 (unsigned long) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
			       struct e8390_pkt_hdr *hdr, int ring_page)
{
    int nic_base = dev->base_addr;
    short *ptrs;
    unsigned long hdr_start= (nic_base-HYDRA_NIC_BASE) +
			     ((ring_page - NESM_START_PG)<<8);
    ptrs = (short *)hdr;

    *(ptrs++) = FUNC1(hdr_start);
    *((short *)hdr) = FUNC0(*((short *)hdr));
    hdr_start += 2;
    *(ptrs++) = FUNC1(hdr_start);
    *((short *)hdr+1) = FUNC0(*((short *)hdr+1));
}