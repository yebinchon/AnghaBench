
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct net_device {int dummy; } ;



__attribute__((used)) static inline void
qlcnic_dcb_get_pg_tc_cfg_rx(struct net_device *netdev, int prio, u8 *prio_type,
       u8 *pgid, u8 *bw_pct, u8 *up_map)
{
 *prio_type = *pgid = *bw_pct = *up_map = 0;
}
