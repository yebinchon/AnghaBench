
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct sk_buff {unsigned char* data; int protocol; } ;
struct TYPE_5__ {struct sk_buff* skb; } ;
struct s_smt_fp_rxd {TYPE_1__ rxd_os; } ;
struct TYPE_6__ {int rx_bytes; int rx_errors; int multicast; int rx_packets; } ;
struct TYPE_7__ {TYPE_2__ gen; } ;
struct TYPE_8__ {TYPE_3__ MacStat; int dev; } ;
struct s_smc {TYPE_4__ os; } ;
typedef TYPE_4__ skfddi_priv ;
typedef int __be16 ;


 int FDDI_MAC_HDR_LEN ;
 unsigned short FDDI_RCF_LEN_MASK ;
 unsigned char FDDI_RII ;
 int HWM_RX_CHECK (struct s_smc*,int ) ;
 int RX_LOW_WATERMARK ;
 int dump_data (unsigned char*,int) ;
 int fddi_type_trans (struct sk_buff*,int ) ;
 int mac_drv_requeue_rxd (struct s_smc*,struct s_smt_fp_rxd volatile*,int) ;
 int netif_rx (struct sk_buff*) ;
 unsigned short ntohs (int ) ;
 int pr_debug (char*,...) ;
 int printk (char*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int) ;

void mac_drv_rx_complete(struct s_smc *smc, volatile struct s_smt_fp_rxd *rxd,
    int frag_count, int len)
{
 skfddi_priv *bp = &smc->os;
 struct sk_buff *skb;
 unsigned char *virt, *cp;
 unsigned short ri;
 u_int RifLength;

 pr_debug("entering mac_drv_rx_complete (len=%d)\n", len);
 if (frag_count != 1) {

  printk("fddi: Multi-fragment receive!\n");
  goto RequeueRxd;

 }
 skb = rxd->rxd_os.skb;
 if (!skb) {
  pr_debug("No skb in rxd\n");
  smc->os.MacStat.gen.rx_errors++;
  goto RequeueRxd;
 }
 virt = skb->data;



 dump_data(skb->data, len);
 if ((virt[1 + 6] & FDDI_RII) == 0)
  RifLength = 0;
 else {
  int n;

  pr_debug("RIF found\n");

  cp = virt + FDDI_MAC_HDR_LEN;

  ri = ntohs(*((__be16 *) cp));
  RifLength = ri & FDDI_RCF_LEN_MASK;
  if (len < (int) (FDDI_MAC_HDR_LEN + RifLength)) {
   printk("fddi: Invalid RIF.\n");
   goto RequeueRxd;

  }
  virt[1 + 6] &= ~FDDI_RII;


  virt = cp + RifLength;
  for (n = FDDI_MAC_HDR_LEN; n; n--)
   *--virt = *--cp;

  skb_pull(skb, RifLength);
  len -= RifLength;
  RifLength = 0;
 }


 smc->os.MacStat.gen.rx_packets++;

 smc->os.MacStat.gen.rx_bytes+=len;


 if (virt[1] & 0x01) {

  smc->os.MacStat.gen.multicast++;
 }


 rxd->rxd_os.skb = ((void*)0);
 skb_trim(skb, len);
 skb->protocol = fddi_type_trans(skb, bp->dev);

 netif_rx(skb);

 HWM_RX_CHECK(smc, RX_LOW_WATERMARK);
 return;

      RequeueRxd:
 pr_debug("Rx: re-queue RXD.\n");
 mac_drv_requeue_rxd(smc, rxd, frag_count);
 smc->os.MacStat.gen.rx_errors++;


}
