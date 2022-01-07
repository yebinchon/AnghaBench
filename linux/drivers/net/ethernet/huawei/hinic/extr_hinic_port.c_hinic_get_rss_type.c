
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_rss_type {void* udp_ipv6; void* udp_ipv4; void* tcp_ipv6_ext; void* tcp_ipv6; void* tcp_ipv4; void* ipv6_ext; void* ipv6; void* ipv4; } ;
struct hinic_rss_context_table {int context; scalar_t__ status; int template_id; int func_id; int member_0; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
typedef int ctx_tbl ;


 int EINVAL ;
 int HINIC_HWIF_FUNC_IDX (struct hinic_hwif*) ;
 int HINIC_PORT_CMD_GET_RSS_CTX_TBL ;
 void* HINIC_RSS_TYPE_GET (int ,int ) ;
 int IPV4 ;
 int IPV6 ;
 int IPV6_EXT ;
 int TCP_IPV4 ;
 int TCP_IPV6 ;
 int TCP_IPV6_EXT ;
 int UDP_IPV4 ;
 int UDP_IPV6 ;
 int dev_err (int *,char*,int,scalar_t__,int) ;
 int hinic_port_msg_cmd (struct hinic_hwdev*,int ,struct hinic_rss_context_table*,int,struct hinic_rss_context_table*,int*) ;

int hinic_get_rss_type(struct hinic_dev *nic_dev, u32 tmpl_idx,
         struct hinic_rss_type *rss_type)
{
 struct hinic_rss_context_table ctx_tbl = { 0 };
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_hwif *hwif;
 struct pci_dev *pdev;
 u16 out_size = sizeof(ctx_tbl);
 int err;

 if (!hwdev || !rss_type)
  return -EINVAL;

 hwif = hwdev->hwif;
 pdev = hwif->pdev;

 ctx_tbl.func_id = HINIC_HWIF_FUNC_IDX(hwif);
 ctx_tbl.template_id = tmpl_idx;

 err = hinic_port_msg_cmd(hwdev, HINIC_PORT_CMD_GET_RSS_CTX_TBL,
     &ctx_tbl, sizeof(ctx_tbl),
     &ctx_tbl, &out_size);
 if (err || !out_size || ctx_tbl.status) {
  dev_err(&pdev->dev, "Failed to get hash type, err: %d, status: 0x%x, out size: 0x%x\n",
   err, ctx_tbl.status, out_size);
  return -EINVAL;
 }

 rss_type->ipv4 = HINIC_RSS_TYPE_GET(ctx_tbl.context, IPV4);
 rss_type->ipv6 = HINIC_RSS_TYPE_GET(ctx_tbl.context, IPV6);
 rss_type->ipv6_ext = HINIC_RSS_TYPE_GET(ctx_tbl.context, IPV6_EXT);
 rss_type->tcp_ipv4 = HINIC_RSS_TYPE_GET(ctx_tbl.context, TCP_IPV4);
 rss_type->tcp_ipv6 = HINIC_RSS_TYPE_GET(ctx_tbl.context, TCP_IPV6);
 rss_type->tcp_ipv6_ext = HINIC_RSS_TYPE_GET(ctx_tbl.context,
           TCP_IPV6_EXT);
 rss_type->udp_ipv4 = HINIC_RSS_TYPE_GET(ctx_tbl.context, UDP_IPV4);
 rss_type->udp_ipv6 = HINIC_RSS_TYPE_GET(ctx_tbl.context, UDP_IPV6);

 return 0;
}
