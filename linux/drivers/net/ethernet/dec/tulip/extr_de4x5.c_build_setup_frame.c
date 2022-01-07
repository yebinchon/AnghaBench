
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {char* dev_addr; } ;
struct de4x5_private {char* setup_frame; scalar_t__ setup_f; } ;


 int ALL ;
 int DE4X5_HASH_TABLE_LEN ;
 int ETH_ALEN ;
 scalar_t__ HASH_PERF ;
 int IMPERF_PA_OFFSET ;
 int SETUP_FRAME_LEN ;
 int memset (char*,int ,int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static char *
build_setup_frame(struct net_device *dev, int mode)
{
    struct de4x5_private *lp = netdev_priv(dev);
    int i;
    char *pa = lp->setup_frame;


    if (mode == ALL) {
 memset(lp->setup_frame, 0, SETUP_FRAME_LEN);
    }

    if (lp->setup_f == HASH_PERF) {
 for (pa=lp->setup_frame+IMPERF_PA_OFFSET, i=0; i<ETH_ALEN; i++) {
     *(pa + i) = dev->dev_addr[i];
     if (i & 0x01) pa += 2;
 }
 *(lp->setup_frame + (DE4X5_HASH_TABLE_LEN >> 3) - 3) = 0x80;
    } else {
 for (i=0; i<ETH_ALEN; i++) {
     *(pa + (i&1)) = dev->dev_addr[i];
     if (i & 0x01) pa += 4;
 }
 for (i=0; i<ETH_ALEN; i++) {
     *(pa + (i&1)) = (char) 0xff;
     if (i & 0x01) pa += 4;
 }
    }

    return pa;
}
