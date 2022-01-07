
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ks8851_net {int netdev; } ;


 int netdev_dbg (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void ks8851_dbg_dumpkkt(struct ks8851_net *ks, u8 *rxpkt)
{
 netdev_dbg(ks->netdev,
     "pkt %02x%02x%02x%02x %02x%02x%02x%02x %02x%02x%02x%02x\n",
     rxpkt[4], rxpkt[5], rxpkt[6], rxpkt[7],
     rxpkt[8], rxpkt[9], rxpkt[10], rxpkt[11],
     rxpkt[12], rxpkt[13], rxpkt[14], rxpkt[15]);
}
