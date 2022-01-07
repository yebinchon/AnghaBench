
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 void cxgb4_getpgtccfg (struct net_device*,int,int *,int *,int *,int *,int ) ;

__attribute__((used)) static void cxgb4_getpgtccfg_rx(struct net_device *dev, int tc,
    u8 *prio_type, u8 *pgid, u8 *bw_per,
    u8 *up_tc_map)
{

 return cxgb4_getpgtccfg(dev, (7 - tc), prio_type, pgid, bw_per,
    up_tc_map, 0);
}
