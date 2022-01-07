
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rndis_pktinfo_id {int flag; } ;
struct rndis_packet {scalar_t__ data_offset; scalar_t__ data_len; } ;
struct TYPE_3__ {struct rndis_packet pkt; } ;
struct rndis_message {TYPE_1__ msg; } ;
struct netvsc_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ cnt; scalar_t__ is_last; } ;
struct netvsc_channel {TYPE_2__ rsc; } ;
struct net_device {int dummy; } ;
struct ndis_tcp_ip_checksum_info {int dummy; } ;
struct ndis_pkt_8021q_info {int dummy; } ;


 int IEEE_8021Q_INFO ;
 scalar_t__ NVSP_RSC_MAX ;
 int NVSP_STAT_FAIL ;
 int NVSP_STAT_SUCCESS ;
 scalar_t__ RNDIS_HEADER_SIZE ;
 int RNDIS_PKTINFO_1ST_FRAG ;
 int RNDIS_PKTINFO_ID ;
 int RNDIS_PKTINFO_LAST_FRAG ;
 int RNDIS_PKTINFO_SUBALLOC ;
 int TCPIP_CHKSUM_PKTINFO ;
 int netdev_err (struct net_device*,char*,scalar_t__,scalar_t__) ;
 int netvsc_recv_callback (struct net_device*,struct netvsc_device*,struct netvsc_channel*) ;
 void* rndis_get_ppi (struct rndis_packet*,int ,int) ;
 int rsc_add_data (struct netvsc_channel*,struct ndis_pkt_8021q_info const*,struct ndis_tcp_ip_checksum_info const*,void*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rndis_filter_receive_data(struct net_device *ndev,
         struct netvsc_device *nvdev,
         struct netvsc_channel *nvchan,
         struct rndis_message *msg,
         u32 data_buflen)
{
 struct rndis_packet *rndis_pkt = &msg->msg.pkt;
 const struct ndis_tcp_ip_checksum_info *csum_info;
 const struct ndis_pkt_8021q_info *vlan;
 const struct rndis_pktinfo_id *pktinfo_id;
 u32 data_offset;
 void *data;
 bool rsc_more = 0;
 int ret;


 data_offset = RNDIS_HEADER_SIZE + rndis_pkt->data_offset;

 data_buflen -= data_offset;





 if (unlikely(data_buflen < rndis_pkt->data_len)) {
  netdev_err(ndev, "rndis message buffer "
      "overflow detected (got %u, min %u)"
      "...dropping this message!\n",
      data_buflen, rndis_pkt->data_len);
  return NVSP_STAT_FAIL;
 }

 vlan = rndis_get_ppi(rndis_pkt, IEEE_8021Q_INFO, 0);

 csum_info = rndis_get_ppi(rndis_pkt, TCPIP_CHKSUM_PKTINFO, 0);

 pktinfo_id = rndis_get_ppi(rndis_pkt, RNDIS_PKTINFO_ID, 1);

 data = (void *)msg + data_offset;


 if (pktinfo_id && (pktinfo_id->flag & RNDIS_PKTINFO_SUBALLOC)) {
  if (pktinfo_id->flag & RNDIS_PKTINFO_1ST_FRAG)
   nvchan->rsc.cnt = 0;
  else if (nvchan->rsc.cnt == 0)
   goto drop;

  rsc_more = 1;

  if (pktinfo_id->flag & RNDIS_PKTINFO_LAST_FRAG)
   rsc_more = 0;

  if (rsc_more && nvchan->rsc.is_last)
   goto drop;
 } else {
  nvchan->rsc.cnt = 0;
 }

 if (unlikely(nvchan->rsc.cnt >= NVSP_RSC_MAX))
  goto drop;






 rsc_add_data(nvchan, vlan, csum_info, data, rndis_pkt->data_len);

 if (rsc_more)
  return NVSP_STAT_SUCCESS;

 ret = netvsc_recv_callback(ndev, nvdev, nvchan);
 nvchan->rsc.cnt = 0;

 return ret;

drop:

 nvchan->rsc.cnt = 0;
 return NVSP_STAT_FAIL;
}
