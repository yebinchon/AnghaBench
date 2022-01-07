
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hclgevf_rss_input_tuple_cmd {int ipv6_fragment_en; int ipv6_sctp_en; int ipv6_udp_en; int ipv6_tcp_en; int ipv4_fragment_en; int ipv4_sctp_en; int ipv4_udp_en; int ipv4_tcp_en; } ;
struct TYPE_3__ {int ipv6_fragment_en; int ipv6_sctp_en; int ipv6_udp_en; int ipv6_tcp_en; int ipv4_fragment_en; int ipv4_sctp_en; int ipv4_udp_en; int ipv4_tcp_en; } ;
struct hclgevf_rss_cfg {TYPE_1__ rss_tuple_sets; } ;
struct hclgevf_dev {TYPE_2__* pdev; int hw; } ;
struct hclgevf_desc {scalar_t__ data; } ;
struct TYPE_4__ {int dev; } ;


 int HCLGEVF_OPC_RSS_INPUT_TUPLE ;
 int dev_err (int *,char*,int) ;
 int hclgevf_cmd_send (int *,struct hclgevf_desc*,int) ;
 int hclgevf_cmd_setup_basic_desc (struct hclgevf_desc*,int ,int) ;

__attribute__((used)) static int hclgevf_set_rss_input_tuple(struct hclgevf_dev *hdev,
           struct hclgevf_rss_cfg *rss_cfg)
{
 struct hclgevf_rss_input_tuple_cmd *req;
 struct hclgevf_desc desc;
 int ret;

 hclgevf_cmd_setup_basic_desc(&desc, HCLGEVF_OPC_RSS_INPUT_TUPLE, 0);

 req = (struct hclgevf_rss_input_tuple_cmd *)desc.data;

 req->ipv4_tcp_en = rss_cfg->rss_tuple_sets.ipv4_tcp_en;
 req->ipv4_udp_en = rss_cfg->rss_tuple_sets.ipv4_udp_en;
 req->ipv4_sctp_en = rss_cfg->rss_tuple_sets.ipv4_sctp_en;
 req->ipv4_fragment_en = rss_cfg->rss_tuple_sets.ipv4_fragment_en;
 req->ipv6_tcp_en = rss_cfg->rss_tuple_sets.ipv6_tcp_en;
 req->ipv6_udp_en = rss_cfg->rss_tuple_sets.ipv6_udp_en;
 req->ipv6_sctp_en = rss_cfg->rss_tuple_sets.ipv6_sctp_en;
 req->ipv6_fragment_en = rss_cfg->rss_tuple_sets.ipv6_fragment_en;

 ret = hclgevf_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  dev_err(&hdev->pdev->dev,
   "Configure rss input fail, status = %d\n", ret);
 return ret;
}
