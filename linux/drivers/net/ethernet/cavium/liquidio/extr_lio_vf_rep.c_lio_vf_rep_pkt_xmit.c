
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int data; } ;
struct TYPE_5__ {int pki_ih3; } ;
struct TYPE_6__ {TYPE_1__ cmd3; } ;
struct octeon_soft_command {scalar_t__ datasize; int dmadptr; struct octeon_soft_command* callback_arg; int callback; TYPE_2__ cmd; int iq_no; struct sk_buff* ctxptr; int virtdptr; } ;
struct octeon_instr_pki_ih3 {int tagtype; } ;
struct octeon_device {TYPE_3__* pci_dev; } ;
struct net_device {int dummy; } ;
struct lio_vf_rep_desc {int ifidx; struct octeon_device* oct; int ifstate; struct net_device* parent_ndev; } ;
struct lio {int txq; } ;
typedef int netdev_tx_t ;
struct TYPE_8__ {scalar_t__ nr_frags; } ;
struct TYPE_7__ {int dev; } ;


 int DMA_TO_DEVICE ;
 struct lio* GET_LIO (struct net_device*) ;
 int IQ_SEND_FAILED ;
 int IQ_SEND_STOP ;
 int LIO_IFSTATE_RUNNING ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int OPCODE_NIC ;
 int OPCODE_NIC_VF_REP_PKT ;
 int ORDERED_TAG ;
 int atomic_read (int *) ;
 int dev_err (int *,char*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_map_single (int *,int ,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int dma_unmap_single (int *,int ,scalar_t__,int ) ;
 int lio_vf_rep_packet_sent_callback ;
 struct lio_vf_rep_desc* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 scalar_t__ octeon_alloc_soft_command (struct octeon_device*,int ,int,int ) ;
 int octeon_free_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 int octeon_prepare_soft_command (struct octeon_device*,struct octeon_soft_command*,int ,int ,int ,int ,int ) ;
 int octeon_send_soft_command (struct octeon_device*,struct octeon_soft_command*) ;
 scalar_t__ octnet_iq_is_full (struct octeon_device*,int ) ;
 TYPE_4__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t
lio_vf_rep_pkt_xmit(struct sk_buff *skb, struct net_device *ndev)
{
 struct lio_vf_rep_desc *vf_rep = netdev_priv(ndev);
 struct net_device *parent_ndev = vf_rep->parent_ndev;
 struct octeon_device *oct = vf_rep->oct;
 struct octeon_instr_pki_ih3 *pki_ih3;
 struct octeon_soft_command *sc;
 struct lio *parent_lio;
 int status;

 parent_lio = GET_LIO(parent_ndev);

 if (!(atomic_read(&vf_rep->ifstate) & LIO_IFSTATE_RUNNING) ||
     skb->len <= 0)
  goto xmit_failed;

 if (octnet_iq_is_full(vf_rep->oct, parent_lio->txq)) {
  dev_err(&oct->pci_dev->dev, "VF rep: Device IQ full\n");
  netif_stop_queue(ndev);
  return NETDEV_TX_BUSY;
 }

 sc = (struct octeon_soft_command *)
  octeon_alloc_soft_command(oct, 0, 16, 0);
 if (!sc) {
  dev_err(&oct->pci_dev->dev, "VF rep: Soft command alloc failed\n");
  goto xmit_failed;
 }


 if (skb_shinfo(skb)->nr_frags != 0) {
  dev_err(&oct->pci_dev->dev, "VF rep: nr_frags != 0. Dropping packet\n");
  octeon_free_soft_command(oct, sc);
  goto xmit_failed;
 }

 sc->dmadptr = dma_map_single(&oct->pci_dev->dev,
         skb->data, skb->len, DMA_TO_DEVICE);
 if (dma_mapping_error(&oct->pci_dev->dev, sc->dmadptr)) {
  dev_err(&oct->pci_dev->dev, "VF rep: DMA mapping failed\n");
  octeon_free_soft_command(oct, sc);
  goto xmit_failed;
 }

 sc->virtdptr = skb->data;
 sc->datasize = skb->len;
 sc->ctxptr = skb;
 sc->iq_no = parent_lio->txq;

 octeon_prepare_soft_command(oct, sc, OPCODE_NIC, OPCODE_NIC_VF_REP_PKT,
        vf_rep->ifidx, 0, 0);
 pki_ih3 = (struct octeon_instr_pki_ih3 *)&sc->cmd.cmd3.pki_ih3;
 pki_ih3->tagtype = ORDERED_TAG;

 sc->callback = lio_vf_rep_packet_sent_callback;
 sc->callback_arg = sc;

 status = octeon_send_soft_command(oct, sc);
 if (status == IQ_SEND_FAILED) {
  dma_unmap_single(&oct->pci_dev->dev, sc->dmadptr,
     sc->datasize, DMA_TO_DEVICE);
  octeon_free_soft_command(oct, sc);
  goto xmit_failed;
 }

 if (status == IQ_SEND_STOP)
  netif_stop_queue(ndev);

 netif_trans_update(ndev);

 return NETDEV_TX_OK;

xmit_failed:
 dev_kfree_skb_any(skb);

 return NETDEV_TX_OK;
}
