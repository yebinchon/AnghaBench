
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct net_device {unsigned int base_addr; int name; } ;


 scalar_t__ AXNET_CMD ;
 scalar_t__ AXNET_DATAPORT ;
 int const E8390_RWRITE ;
 int const E8390_START ;
 scalar_t__ EN0_RSARHI ;
 scalar_t__ EN0_RSARLO ;
 int outb_p (int const,scalar_t__) ;
 int outsw (scalar_t__,int const*,int) ;
 int pr_debug (char*,int ,int) ;

__attribute__((used)) static void block_output(struct net_device *dev, int count,
    const u_char *buf, const int start_page)
{
    unsigned int nic_base = dev->base_addr;

    pr_debug("%s: [bo=%d]\n", dev->name, count);




    if (count & 0x01)
 count++;

    outb_p(0x00, nic_base + EN0_RSARLO);
    outb_p(start_page, nic_base + EN0_RSARHI);
    outb_p(E8390_RWRITE+E8390_START, nic_base + AXNET_CMD);
    outsw(nic_base + AXNET_DATAPORT, buf, count>>1);
}
