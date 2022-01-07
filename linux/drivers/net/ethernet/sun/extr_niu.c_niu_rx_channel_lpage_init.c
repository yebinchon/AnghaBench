
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {scalar_t__ port; } ;


 int RX_LOG_MASK1 (int) ;
 int RX_LOG_MASK2 (int) ;
 int RX_LOG_PAGE_HDL (int) ;
 int RX_LOG_PAGE_RELO1 (int) ;
 int RX_LOG_PAGE_RELO2 (int) ;
 int RX_LOG_PAGE_VLD (int) ;
 int RX_LOG_PAGE_VLD_FUNC_SHIFT ;
 int RX_LOG_PAGE_VLD_PAGE0 ;
 int RX_LOG_PAGE_VLD_PAGE1 ;
 int RX_LOG_VAL1 (int) ;
 int RX_LOG_VAL2 (int) ;
 int nw64 (int ,int) ;

__attribute__((used)) static int niu_rx_channel_lpage_init(struct niu *np, int channel)
{
 u64 val;

 nw64(RX_LOG_MASK1(channel), 0);
 nw64(RX_LOG_VAL1(channel), 0);
 nw64(RX_LOG_MASK2(channel), 0);
 nw64(RX_LOG_VAL2(channel), 0);
 nw64(RX_LOG_PAGE_RELO1(channel), 0);
 nw64(RX_LOG_PAGE_RELO2(channel), 0);
 nw64(RX_LOG_PAGE_HDL(channel), 0);

 val = (u64)np->port << RX_LOG_PAGE_VLD_FUNC_SHIFT;
 val |= (RX_LOG_PAGE_VLD_PAGE0 | RX_LOG_PAGE_VLD_PAGE1);
 nw64(RX_LOG_PAGE_VLD(channel), val);

 return 0;
}
