
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct skb_shared_info {int tx_flags; } ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct pci_dev {int dummy; } ;
struct pch_gbe_adapter {struct pci_dev* ptp_pdev; scalar_t__ hwts_tx_en; } ;
typedef int shhwtstamps ;


 int SKBTX_HW_TSTAMP ;
 int SKBTX_IN_PROGRESS ;
 int TX_SNAPSHOT_LOCKED ;
 scalar_t__ likely (int) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int ns_to_ktime (int ) ;
 int pch_ch_event_read (struct pci_dev*) ;
 int pch_ch_event_write (struct pci_dev*,int) ;
 int pch_tx_snap_read (struct pci_dev*) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff*) ;
 int skb_tstamp_tx (struct sk_buff*,struct skb_shared_hwtstamps*) ;
 int udelay (int) ;

__attribute__((used)) static void
pch_tx_timestamp(struct pch_gbe_adapter *adapter, struct sk_buff *skb)
{
 struct skb_shared_hwtstamps shhwtstamps;
 struct pci_dev *pdev;
 struct skb_shared_info *shtx;
 u64 ns;
 u32 cnt, val;

 shtx = skb_shinfo(skb);
 if (likely(!(shtx->tx_flags & SKBTX_HW_TSTAMP && adapter->hwts_tx_en)))
  return;

 shtx->tx_flags |= SKBTX_IN_PROGRESS;


 pdev = adapter->ptp_pdev;




 for (cnt = 0; cnt < 100; cnt++) {
  val = pch_ch_event_read(pdev);
  if (val & TX_SNAPSHOT_LOCKED)
   break;
  udelay(1);
 }
 if (!(val & TX_SNAPSHOT_LOCKED)) {
  shtx->tx_flags &= ~SKBTX_IN_PROGRESS;
  return;
 }

 ns = pch_tx_snap_read(pdev);

 memset(&shhwtstamps, 0, sizeof(shhwtstamps));
 shhwtstamps.hwtstamp = ns_to_ktime(ns);
 skb_tstamp_tx(skb, &shhwtstamps);

 pch_ch_event_write(pdev, TX_SNAPSHOT_LOCKED);
}
