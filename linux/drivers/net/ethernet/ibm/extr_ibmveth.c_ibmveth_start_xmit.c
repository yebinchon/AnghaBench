
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {unsigned int flags_len; void* address; } ;
union ibmveth_buf_desc {TYPE_3__ fields; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ protocol; int csum_offset; unsigned int len; int data; } ;
struct TYPE_8__ {unsigned int tx_bytes; int tx_dropped; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct ibmveth_adapter {int tx_map_failed; TYPE_2__* vdev; int tx_send_failed; int tx_large_packets; scalar_t__ fw_large_send_support; void* bounce_buffer_dma; int bounce_buffer; scalar_t__ is_active_trunk; } ;
typedef int skb_frag_t ;
typedef int netdev_tx_t ;
typedef void* dma_addr_t ;
typedef int descs ;
struct TYPE_14__ {scalar_t__ protocol; int check; } ;
struct TYPE_13__ {scalar_t__ nexthdr; } ;
struct TYPE_12__ {int nr_frags; scalar_t__ gso_size; int * frags; } ;
struct TYPE_11__ {int check; } ;
struct TYPE_9__ {int dev; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int DMA_TO_DEVICE ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int FW_FEATURE_CMO ;
 unsigned int IBMVETH_BUF_CSUM_GOOD ;
 int IBMVETH_BUF_LEN_MASK ;
 unsigned int IBMVETH_BUF_LRG_SND ;
 unsigned int IBMVETH_BUF_NO_CSUM ;
 unsigned int IBMVETH_BUF_VALID ;
 scalar_t__ IPPROTO_TCP ;
 int NETDEV_TX_OK ;
 scalar_t__ __skb_linearize (struct sk_buff*) ;
 int cpu_to_be16 (scalar_t__) ;
 int dev_consume_skb_any (struct sk_buff*) ;
 void* dma_map_single (int *,int ,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int *,void*) ;
 int dma_unmap_page (int *,void*,int,int ) ;
 int dma_unmap_single (int *,void*,int,int ) ;
 int firmware_has_feature (int ) ;
 scalar_t__ htons (int ) ;
 scalar_t__ ibmveth_send (struct ibmveth_adapter*,union ibmveth_buf_desc*,unsigned long) ;
 TYPE_7__* ip_hdr (struct sk_buff*) ;
 TYPE_6__* ipv6_hdr (struct sk_buff*) ;
 int memset (union ibmveth_buf_desc*,int ,int) ;
 int netdev_err (struct net_device*,char*) ;
 struct ibmveth_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ skb_checksum_help (struct sk_buff*) ;
 int skb_copy_from_linear_data (struct sk_buff*,int ,unsigned int) ;
 void* skb_frag_dma_map (int *,int const*,int ,unsigned int,int ) ;
 unsigned int skb_frag_size (int const*) ;
 scalar_t__ skb_has_frag_list (struct sk_buff*) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 int skb_is_gso_v6 (struct sk_buff*) ;
 int skb_is_nonlinear (struct sk_buff*) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 TYPE_5__* skb_shinfo (struct sk_buff*) ;
 unsigned char* skb_transport_header (struct sk_buff*) ;
 TYPE_4__* tcp_hdr (struct sk_buff*) ;
 unsigned int tx_copybreak ;

__attribute__((used)) static netdev_tx_t ibmveth_start_xmit(struct sk_buff *skb,
          struct net_device *netdev)
{
 struct ibmveth_adapter *adapter = netdev_priv(netdev);
 unsigned int desc_flags;
 union ibmveth_buf_desc descs[6];
 int last, i;
 int force_bounce = 0;
 dma_addr_t dma_addr;
 unsigned long mss = 0;




 if (adapter->is_active_trunk &&
     skb_has_frag_list(skb) && __skb_linearize(skb)) {
  netdev->stats.tx_dropped++;
  goto out;
 }





 if (skb_shinfo(skb)->nr_frags > 5 && __skb_linearize(skb)) {
  netdev->stats.tx_dropped++;
  goto out;
 }


 if (skb->ip_summed == CHECKSUM_PARTIAL &&
     ((skb->protocol == htons(ETH_P_IP) &&
       ip_hdr(skb)->protocol != IPPROTO_TCP) ||
      (skb->protocol == htons(ETH_P_IPV6) &&
       ipv6_hdr(skb)->nexthdr != IPPROTO_TCP)) &&
     skb_checksum_help(skb)) {

  netdev_err(netdev, "tx: failed to checksum packet\n");
  netdev->stats.tx_dropped++;
  goto out;
 }

 desc_flags = IBMVETH_BUF_VALID;

 if (skb->ip_summed == CHECKSUM_PARTIAL) {
  unsigned char *buf = skb_transport_header(skb) +
      skb->csum_offset;

  desc_flags |= (IBMVETH_BUF_NO_CSUM | IBMVETH_BUF_CSUM_GOOD);


  buf[0] = 0;
  buf[1] = 0;

  if (skb_is_gso(skb) && adapter->fw_large_send_support)
   desc_flags |= IBMVETH_BUF_LRG_SND;
 }

retry_bounce:
 memset(descs, 0, sizeof(descs));






 if (force_bounce || (!skb_is_nonlinear(skb) &&
    (skb->len < tx_copybreak))) {
  skb_copy_from_linear_data(skb, adapter->bounce_buffer,
       skb->len);

  descs[0].fields.flags_len = desc_flags | skb->len;
  descs[0].fields.address = adapter->bounce_buffer_dma;

  if (ibmveth_send(adapter, descs, 0)) {
   adapter->tx_send_failed++;
   netdev->stats.tx_dropped++;
  } else {
   netdev->stats.tx_packets++;
   netdev->stats.tx_bytes += skb->len;
  }

  goto out;
 }


 dma_addr = dma_map_single(&adapter->vdev->dev, skb->data,
      skb_headlen(skb), DMA_TO_DEVICE);
 if (dma_mapping_error(&adapter->vdev->dev, dma_addr))
  goto map_failed;

 descs[0].fields.flags_len = desc_flags | skb_headlen(skb);
 descs[0].fields.address = dma_addr;


 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[i];

  dma_addr = skb_frag_dma_map(&adapter->vdev->dev, frag, 0,
         skb_frag_size(frag), DMA_TO_DEVICE);

  if (dma_mapping_error(&adapter->vdev->dev, dma_addr))
   goto map_failed_frags;

  descs[i+1].fields.flags_len = desc_flags | skb_frag_size(frag);
  descs[i+1].fields.address = dma_addr;
 }

 if (skb->ip_summed == CHECKSUM_PARTIAL && skb_is_gso(skb)) {
  if (adapter->fw_large_send_support) {
   mss = (unsigned long)skb_shinfo(skb)->gso_size;
   adapter->tx_large_packets++;
  } else if (!skb_is_gso_v6(skb)) {




   ip_hdr(skb)->check = 0xffff;
   tcp_hdr(skb)->check =
    cpu_to_be16(skb_shinfo(skb)->gso_size);
   adapter->tx_large_packets++;
  }
 }

 if (ibmveth_send(adapter, descs, mss)) {
  adapter->tx_send_failed++;
  netdev->stats.tx_dropped++;
 } else {
  netdev->stats.tx_packets++;
  netdev->stats.tx_bytes += skb->len;
 }

 dma_unmap_single(&adapter->vdev->dev,
    descs[0].fields.address,
    descs[0].fields.flags_len & IBMVETH_BUF_LEN_MASK,
    DMA_TO_DEVICE);

 for (i = 1; i < skb_shinfo(skb)->nr_frags + 1; i++)
  dma_unmap_page(&adapter->vdev->dev, descs[i].fields.address,
          descs[i].fields.flags_len & IBMVETH_BUF_LEN_MASK,
          DMA_TO_DEVICE);

out:
 dev_consume_skb_any(skb);
 return NETDEV_TX_OK;

map_failed_frags:
 last = i+1;
 for (i = 1; i < last; i++)
  dma_unmap_page(&adapter->vdev->dev, descs[i].fields.address,
          descs[i].fields.flags_len & IBMVETH_BUF_LEN_MASK,
          DMA_TO_DEVICE);

 dma_unmap_single(&adapter->vdev->dev,
    descs[0].fields.address,
    descs[0].fields.flags_len & IBMVETH_BUF_LEN_MASK,
    DMA_TO_DEVICE);
map_failed:
 if (!firmware_has_feature(FW_FEATURE_CMO))
  netdev_err(netdev, "tx: unable to map xmit buffer\n");
 adapter->tx_map_failed++;
 if (skb_linearize(skb)) {
  netdev->stats.tx_dropped++;
  goto out;
 }
 force_bounce = 1;
 goto retry_bounce;
}
