
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct htc_packet {unsigned long buf_len; int endpoint; int * buf_start; int * buf; void* pkt_cntxt; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;



__attribute__((used)) static inline void set_htc_rxpkt_info(struct htc_packet *packet, void *context,
          u8 *buf, unsigned long len,
          enum htc_endpoint_id eid)
{
 packet->pkt_cntxt = context;
 packet->buf = buf;
 packet->buf_start = buf;
 packet->buf_len = len;
 packet->endpoint = eid;
}
