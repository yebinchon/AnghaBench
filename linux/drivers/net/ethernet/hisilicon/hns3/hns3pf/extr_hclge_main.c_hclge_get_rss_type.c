
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rss_type; } ;
struct TYPE_5__ {TYPE_1__ kinfo; } ;
struct TYPE_6__ {scalar_t__ ipv6_fragment_en; scalar_t__ ipv4_fragment_en; scalar_t__ ipv6_sctp_en; scalar_t__ ipv6_udp_en; scalar_t__ ipv6_tcp_en; scalar_t__ ipv4_sctp_en; scalar_t__ ipv4_udp_en; scalar_t__ ipv4_tcp_en; } ;
struct hclge_vport {TYPE_2__ nic; TYPE_3__ rss_tuple_sets; } ;


 int PKT_HASH_TYPE_L3 ;
 int PKT_HASH_TYPE_L4 ;
 int PKT_HASH_TYPE_NONE ;

__attribute__((used)) static void hclge_get_rss_type(struct hclge_vport *vport)
{
 if (vport->rss_tuple_sets.ipv4_tcp_en ||
     vport->rss_tuple_sets.ipv4_udp_en ||
     vport->rss_tuple_sets.ipv4_sctp_en ||
     vport->rss_tuple_sets.ipv6_tcp_en ||
     vport->rss_tuple_sets.ipv6_udp_en ||
     vport->rss_tuple_sets.ipv6_sctp_en)
  vport->nic.kinfo.rss_type = PKT_HASH_TYPE_L4;
 else if (vport->rss_tuple_sets.ipv4_fragment_en ||
   vport->rss_tuple_sets.ipv6_fragment_en)
  vport->nic.kinfo.rss_type = PKT_HASH_TYPE_L3;
 else
  vport->nic.kinfo.rss_type = PKT_HASH_TYPE_NONE;
}
