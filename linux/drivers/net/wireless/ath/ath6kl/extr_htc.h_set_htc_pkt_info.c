
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int tag; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct htc_packet {unsigned int act_len; int endpoint; TYPE_2__ info; int * buf; void* pkt_cntxt; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;



__attribute__((used)) static inline void set_htc_pkt_info(struct htc_packet *packet, void *context,
        u8 *buf, unsigned int len,
        enum htc_endpoint_id eid, u16 tag)
{
 packet->pkt_cntxt = context;
 packet->buf = buf;
 packet->act_len = len;
 packet->endpoint = eid;
 packet->info.tx.tag = tag;
}
