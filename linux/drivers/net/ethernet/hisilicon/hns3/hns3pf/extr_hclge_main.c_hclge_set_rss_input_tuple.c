
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hclge_rss_input_tuple_cmd {int ipv6_fragment_en; int ipv6_sctp_en; int ipv6_udp_en; int ipv6_tcp_en; int ipv4_fragment_en; int ipv4_sctp_en; int ipv4_udp_en; int ipv4_tcp_en; } ;
struct hclge_dev {TYPE_2__* pdev; int hw; TYPE_3__* vport; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_4__ {int ipv6_fragment_en; int ipv6_sctp_en; int ipv6_udp_en; int ipv6_tcp_en; int ipv4_fragment_en; int ipv4_sctp_en; int ipv4_udp_en; int ipv4_tcp_en; } ;
struct TYPE_6__ {TYPE_1__ rss_tuple_sets; } ;
struct TYPE_5__ {int dev; } ;


 int HCLGE_OPC_RSS_INPUT_TUPLE ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hclge_get_rss_type (TYPE_3__*) ;

__attribute__((used)) static int hclge_set_rss_input_tuple(struct hclge_dev *hdev)
{
 struct hclge_rss_input_tuple_cmd *req;
 struct hclge_desc desc;
 int ret;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_RSS_INPUT_TUPLE, 0);

 req = (struct hclge_rss_input_tuple_cmd *)desc.data;


 req->ipv4_tcp_en = hdev->vport[0].rss_tuple_sets.ipv4_tcp_en;
 req->ipv4_udp_en = hdev->vport[0].rss_tuple_sets.ipv4_udp_en;
 req->ipv4_sctp_en = hdev->vport[0].rss_tuple_sets.ipv4_sctp_en;
 req->ipv4_fragment_en = hdev->vport[0].rss_tuple_sets.ipv4_fragment_en;
 req->ipv6_tcp_en = hdev->vport[0].rss_tuple_sets.ipv6_tcp_en;
 req->ipv6_udp_en = hdev->vport[0].rss_tuple_sets.ipv6_udp_en;
 req->ipv6_sctp_en = hdev->vport[0].rss_tuple_sets.ipv6_sctp_en;
 req->ipv6_fragment_en = hdev->vport[0].rss_tuple_sets.ipv6_fragment_en;
 hclge_get_rss_type(&hdev->vport[0]);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "Configure rss input fail, status = %d\n", ret);
 return ret;
}
