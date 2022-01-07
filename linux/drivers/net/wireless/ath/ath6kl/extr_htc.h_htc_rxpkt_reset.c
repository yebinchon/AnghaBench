
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_packet {scalar_t__ act_len; int buf_start; int buf; } ;



__attribute__((used)) static inline void htc_rxpkt_reset(struct htc_packet *packet)
{
 packet->buf = packet->buf_start;
 packet->act_len = 0;
}
