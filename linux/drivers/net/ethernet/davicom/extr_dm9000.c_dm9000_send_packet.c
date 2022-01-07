
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct board_info {int ip_summed; } ;


 int CHECKSUM_NONE ;
 int DM9000_TCCR ;
 int DM9000_TCR ;
 int DM9000_TXPLH ;
 int DM9000_TXPLL ;
 int TCCR_IP ;
 int TCCR_TCP ;
 int TCCR_UDP ;
 int TCR_TXREQ ;
 int iow (struct board_info*,int ,int) ;
 struct board_info* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static void dm9000_send_packet(struct net_device *dev,
          int ip_summed,
          u16 pkt_len)
{
 struct board_info *dm = to_dm9000_board(dev);


 if (dm->ip_summed != ip_summed) {
  if (ip_summed == CHECKSUM_NONE)
   iow(dm, DM9000_TCCR, 0);
  else
   iow(dm, DM9000_TCCR, TCCR_IP | TCCR_UDP | TCCR_TCP);
  dm->ip_summed = ip_summed;
 }


 iow(dm, DM9000_TXPLL, pkt_len);
 iow(dm, DM9000_TXPLH, pkt_len >> 8);


 iow(dm, DM9000_TCR, TCR_TXREQ);
}
