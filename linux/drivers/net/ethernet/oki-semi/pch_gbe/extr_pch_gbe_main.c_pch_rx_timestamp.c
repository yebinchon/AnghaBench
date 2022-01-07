
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct pci_dev {int dummy; } ;
struct pch_gbe_adapter {struct pci_dev* ptp_pdev; int hwts_rx_en; } ;


 int RX_SNAPSHOT_LOCKED ;
 int htonl (int) ;
 int htons (int) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int ns_to_ktime (int ) ;
 int pch_ch_event_read (struct pci_dev*) ;
 int pch_ch_event_write (struct pci_dev*,int) ;
 int pch_ptp_match (struct sk_buff*,int ,int ,int ) ;
 int pch_rx_snap_read (struct pci_dev*) ;
 int pch_src_uuid_hi_read (struct pci_dev*) ;
 int pch_src_uuid_lo_read (struct pci_dev*) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;

__attribute__((used)) static void
pch_rx_timestamp(struct pch_gbe_adapter *adapter, struct sk_buff *skb)
{
 struct skb_shared_hwtstamps *shhwtstamps;
 struct pci_dev *pdev;
 u64 ns;
 u32 hi, lo, val;
 u16 uid, seq;

 if (!adapter->hwts_rx_en)
  return;


 pdev = adapter->ptp_pdev;

 val = pch_ch_event_read(pdev);

 if (!(val & RX_SNAPSHOT_LOCKED))
  return;

 lo = pch_src_uuid_lo_read(pdev);
 hi = pch_src_uuid_hi_read(pdev);

 uid = hi & 0xffff;
 seq = (hi >> 16) & 0xffff;

 if (!pch_ptp_match(skb, htons(uid), htonl(lo), htons(seq)))
  goto out;

 ns = pch_rx_snap_read(pdev);

 shhwtstamps = skb_hwtstamps(skb);
 memset(shhwtstamps, 0, sizeof(*shhwtstamps));
 shhwtstamps->hwtstamp = ns_to_ktime(ns);
out:
 pch_ch_event_write(pdev, RX_SNAPSHOT_LOCKED);
}
