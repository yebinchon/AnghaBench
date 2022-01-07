
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * dev_addr; } ;


 int ETH_ALEN ;

__attribute__((used)) static void
create_packet(struct net_device *dev, char *frame, int len)
{
    int i;
    char *buf = frame;

    for (i=0; i<ETH_ALEN; i++) {
 *buf++ = dev->dev_addr[i];
    }
    for (i=0; i<ETH_ALEN; i++) {
 *buf++ = dev->dev_addr[i];
    }

    *buf++ = 0;
    *buf++ = 1;
}
