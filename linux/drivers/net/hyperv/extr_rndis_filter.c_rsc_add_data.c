
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cnt; int pktlen; int* len; void** data; struct ndis_tcp_ip_checksum_info const* csum_info; struct ndis_pkt_8021q_info const* vlan; } ;
struct netvsc_channel {TYPE_1__ rsc; } ;
struct ndis_tcp_ip_checksum_info {int dummy; } ;
struct ndis_pkt_8021q_info {int dummy; } ;



__attribute__((used)) static inline
void rsc_add_data(struct netvsc_channel *nvchan,
    const struct ndis_pkt_8021q_info *vlan,
    const struct ndis_tcp_ip_checksum_info *csum_info,
    void *data, u32 len)
{
 u32 cnt = nvchan->rsc.cnt;

 if (cnt) {
  nvchan->rsc.pktlen += len;
 } else {
  nvchan->rsc.vlan = vlan;
  nvchan->rsc.csum_info = csum_info;
  nvchan->rsc.pktlen = len;
 }

 nvchan->rsc.data[cnt] = data;
 nvchan->rsc.len[cnt] = len;
 nvchan->rsc.cnt++;
}
