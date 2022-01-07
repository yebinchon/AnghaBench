
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_channel {scalar_t__ rx_pkt_n_frags; } ;


 int __ef4_rx_packet (struct ef4_channel*) ;

__attribute__((used)) static inline void ef4_rx_flush_packet(struct ef4_channel *channel)
{
 if (channel->rx_pkt_n_frags)
  __ef4_rx_packet(channel);
}
