
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct sk_buff {int protocol; } ;
struct TYPE_9__ {int packet_length; } ;
struct TYPE_8__ {int placement_offset; } ;
struct qed_ll2_comp_rx_data {int opaque_data_1; int opaque_data_0; scalar_t__ vlan; TYPE_3__ length; TYPE_2__ u; int parse_flags; scalar_t__ rx_buf_addr; struct qed_ll2_buffer* cookie; } ;
struct qed_ll2_buffer {int phys_addr; int * data; } ;
struct qed_hwfn {struct qed_dev* cdev; } ;
struct qed_dev {int dp_module; TYPE_5__* ll2; TYPE_1__* pdev; } ;
typedef int dma_addr_t ;
struct TYPE_12__ {int h_proto; } ;
struct TYPE_11__ {int handle; int cb_cookie; TYPE_4__* cbs; int rx_size; } ;
struct TYPE_10__ {int (* rx_cb ) (int ,struct sk_buff*,int ,int ) ;} ;
struct TYPE_7__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int DP_INFO (struct qed_dev*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int,char*,...) ;
 int DUMP_PREFIX_OFFSET ;
 int EINVAL ;
 int ETH_HLEN ;
 int ETH_P_8021Q ;
 int KERN_INFO ;
 int NETIF_MSG_PKTDATA ;
 int NETIF_MSG_RX_STATUS ;
 scalar_t__ NET_SKB_PAD ;
 int QED_MSG_LL2 ;
 int QED_MSG_STORAGE ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,scalar_t__) ;
 struct sk_buff* build_skb (int *,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 TYPE_6__* eth_hdr (struct sk_buff*) ;
 int htons (int ) ;
 int kfree (int *) ;
 int print_hex_dump (int ,char*,int ,int,int,int *,int ,int) ;
 int qed_ll2_alloc_buffer (struct qed_dev*,int **,int *) ;
 int qed_ll2_dealloc_buffer (struct qed_dev*,struct qed_ll2_buffer*) ;
 int qed_ll2_post_rx_buffer (struct qed_hwfn*,int ,int ,int ,struct qed_ll2_buffer*,int) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int stub1 (int ,struct sk_buff*,int ,int ) ;

__attribute__((used)) static void qed_ll2b_complete_rx_packet(void *cxt,
     struct qed_ll2_comp_rx_data *data)
{
 struct qed_hwfn *p_hwfn = cxt;
 struct qed_ll2_buffer *buffer = data->cookie;
 struct qed_dev *cdev = p_hwfn->cdev;
 dma_addr_t new_phys_addr;
 struct sk_buff *skb;
 bool reuse = 0;
 int rc = -EINVAL;
 u8 *new_data;

 DP_VERBOSE(p_hwfn,
     (NETIF_MSG_RX_STATUS | QED_MSG_STORAGE | NETIF_MSG_PKTDATA),
     "Got an LL2 Rx completion: [Buffer at phys 0x%llx, offset 0x%02x] Length 0x%04x Parse_flags 0x%04x vlan 0x%04x Opaque data [0x%08x:0x%08x]\n",
     (u64)data->rx_buf_addr,
     data->u.placement_offset,
     data->length.packet_length,
     data->parse_flags,
     data->vlan, data->opaque_data_0, data->opaque_data_1);

 if ((cdev->dp_module & NETIF_MSG_PKTDATA) && buffer->data) {
  print_hex_dump(KERN_INFO, "",
          DUMP_PREFIX_OFFSET, 16, 1,
          buffer->data, data->length.packet_length, 0);
 }


 if (data->length.packet_length < ETH_HLEN)
  reuse = 1;


 if (!reuse)
  rc = qed_ll2_alloc_buffer(p_hwfn->cdev, &new_data,
       &new_phys_addr);


 if (rc)
  goto out_post;
 dma_unmap_single(&cdev->pdev->dev, buffer->phys_addr,
    cdev->ll2->rx_size, DMA_FROM_DEVICE);

 skb = build_skb(buffer->data, 0);
 if (!skb) {
  DP_INFO(cdev, "Failed to build SKB\n");
  kfree(buffer->data);
  goto out_post1;
 }

 data->u.placement_offset += NET_SKB_PAD;
 skb_reserve(skb, data->u.placement_offset);
 skb_put(skb, data->length.packet_length);
 skb_checksum_none_assert(skb);




 skb_reset_mac_header(skb);
 skb->protocol = eth_hdr(skb)->h_proto;


 if (cdev->ll2->cbs && cdev->ll2->cbs->rx_cb) {
  if (data->vlan)
   __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
            data->vlan);
  cdev->ll2->cbs->rx_cb(cdev->ll2->cb_cookie, skb,
          data->opaque_data_0,
          data->opaque_data_1);
 } else {
  DP_VERBOSE(p_hwfn, (NETIF_MSG_RX_STATUS | NETIF_MSG_PKTDATA |
        QED_MSG_LL2 | QED_MSG_STORAGE),
      "Dropping the packet\n");
  kfree(buffer->data);
 }

out_post1:

 buffer->data = new_data;
 buffer->phys_addr = new_phys_addr;

out_post:
 rc = qed_ll2_post_rx_buffer(p_hwfn, cdev->ll2->handle,
        buffer->phys_addr, 0, buffer, 1);
 if (rc)
  qed_ll2_dealloc_buffer(cdev, buffer);
}
