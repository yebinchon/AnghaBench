
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct kvaser_pciefd_rx_packet {int* header; } ;
struct kvaser_pciefd_can {scalar_t__ err_rep_cnt; int bec_poll_timer; } ;
struct kvaser_pciefd {size_t nr_channels; struct kvaser_pciefd_can** can; } ;


 int EIO ;
 int KVASER_PCIEFD_BEC_POLL_FREQ ;
 scalar_t__ KVASER_PCIEFD_MAX_ERR_REP ;
 int KVASER_PCIEFD_PACKET_CHID_SHIFT ;
 int kvaser_pciefd_disable_err_gen (struct kvaser_pciefd_can*) ;
 int kvaser_pciefd_rx_error_frame (struct kvaser_pciefd_can*,struct kvaser_pciefd_rx_packet*) ;
 int mod_timer (int *,int ) ;

__attribute__((used)) static int kvaser_pciefd_handle_error_packet(struct kvaser_pciefd *pcie,
          struct kvaser_pciefd_rx_packet *p)
{
 struct kvaser_pciefd_can *can;
 u8 ch_id = (p->header[1] >> KVASER_PCIEFD_PACKET_CHID_SHIFT) & 0x7;

 if (ch_id >= pcie->nr_channels)
  return -EIO;

 can = pcie->can[ch_id];

 kvaser_pciefd_rx_error_frame(can, p);
 if (can->err_rep_cnt >= KVASER_PCIEFD_MAX_ERR_REP)

  kvaser_pciefd_disable_err_gen(can);

 mod_timer(&can->bec_poll_timer, KVASER_PCIEFD_BEC_POLL_FREQ);
 return 0;
}
