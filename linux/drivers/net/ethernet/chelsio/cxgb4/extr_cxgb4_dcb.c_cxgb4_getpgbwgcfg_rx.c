
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 void cxgb4_getpgbwgcfg (struct net_device*,int,int *,int ) ;

__attribute__((used)) static void cxgb4_getpgbwgcfg_rx(struct net_device *dev, int pgid, u8 *bw_per)
{
 return cxgb4_getpgbwgcfg(dev, pgid, bw_per, 0);
}
