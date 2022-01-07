
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int multicast; int rx_errors; int rx_crc_errors; int rx_fifo_errors; int rx_missed_errors; int rx_over_errors; scalar_t__ tx_window_errors; scalar_t__ tx_heartbeat_errors; scalar_t__ tx_fifo_errors; scalar_t__ tx_carrier_errors; scalar_t__ tx_aborted_errors; scalar_t__ rx_frame_errors; scalar_t__ tx_errors; scalar_t__ collisions; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct net_device {int flags; TYPE_2__ stats; } ;
struct TYPE_3__ {int mprcl; int mprch; int bprcl; int ruc; int roc; int crcerrs; int icbc; int ecbc; int mpc; int gotcl; int gorcl; int gptcl; int gprcl; int rjc; int xofftxc; int xoffrxc; int xontxc; int xonrxc; int mcftc; int mcfrc; int pftc; int pfrc; int lfc; int rfc; int ibic; int tsctfc; int tsctc; int plt64c; int dc; int toth; int totl; int gotch; int jptch; int jptcl; int vptch; int vptcl; int uptch; int uptcl; int mptch; int mptcl; int bptch; int bptcl; int gptch; int tpth; int tptl; int rlec; int rnbc; int torh; int torl; int gorch; int jprch; int jprcl; int vprch; int vprcl; int uprch; int uprcl; int gprch; int tprh; int tprl; int bprch; } ;
struct ixgb_adapter {TYPE_1__ stats; int hw; struct pci_dev* pdev; struct net_device* netdev; } ;


 int BPRCH ;
 int BPRCL ;
 int BPTCH ;
 int BPTCL ;
 int CRCERRS ;
 int DC ;
 int ECBC ;
 int GORCH ;
 int GORCL ;
 int GOTCH ;
 int GOTCL ;
 int GPRCH ;
 int GPRCL ;
 int GPTCH ;
 int GPTCL ;
 int IBIC ;
 int ICBC ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ IXGB_MAX_NUM_MULTICAST_ADDRESSES ;
 int IXGB_READ_REG (int *,int ) ;
 int JPRCH ;
 int JPRCL ;
 int JPTCH ;
 int JPTCL ;
 int LFC ;
 int MCFRC ;
 int MCFTC ;
 int MPC ;
 int MPRCH ;
 int MPRCL ;
 int MPTCH ;
 int MPTCL ;
 int PFRC ;
 int PFTC ;
 int PLT64C ;
 int RFC ;
 int RJC ;
 int RLEC ;
 int RNBC ;
 int ROC ;
 int RUC ;
 int TORH ;
 int TORL ;
 int TOTH ;
 int TOTL ;
 int TPRH ;
 int TPRL ;
 int TPTH ;
 int TPTL ;
 int TSCTC ;
 int TSCTFC ;
 int UPRCH ;
 int UPRCL ;
 int UPTCH ;
 int UPTCL ;
 int VPRCH ;
 int VPRCL ;
 int VPTCH ;
 int VPTCL ;
 int XOFFRXC ;
 int XOFFTXC ;
 int XONRXC ;
 int XONTXC ;
 scalar_t__ netdev_mc_count (struct net_device*) ;
 scalar_t__ pci_channel_offline (struct pci_dev*) ;

void
ixgb_update_stats(struct ixgb_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;


 if (pci_channel_offline(pdev))
  return;

 if ((netdev->flags & IFF_PROMISC) || (netdev->flags & IFF_ALLMULTI) ||
    (netdev_mc_count(netdev) > IXGB_MAX_NUM_MULTICAST_ADDRESSES)) {
  u64 multi = IXGB_READ_REG(&adapter->hw, MPRCL);
  u32 bcast_l = IXGB_READ_REG(&adapter->hw, BPRCL);
  u32 bcast_h = IXGB_READ_REG(&adapter->hw, BPRCH);
  u64 bcast = ((u64)bcast_h << 32) | bcast_l;

  multi |= ((u64)IXGB_READ_REG(&adapter->hw, MPRCH) << 32);

  if (multi >= bcast)
   multi -= bcast;

  adapter->stats.mprcl += (multi & 0xFFFFFFFF);
  adapter->stats.mprch += (multi >> 32);
  adapter->stats.bprcl += bcast_l;
  adapter->stats.bprch += bcast_h;
 } else {
  adapter->stats.mprcl += IXGB_READ_REG(&adapter->hw, MPRCL);
  adapter->stats.mprch += IXGB_READ_REG(&adapter->hw, MPRCH);
  adapter->stats.bprcl += IXGB_READ_REG(&adapter->hw, BPRCL);
  adapter->stats.bprch += IXGB_READ_REG(&adapter->hw, BPRCH);
 }
 adapter->stats.tprl += IXGB_READ_REG(&adapter->hw, TPRL);
 adapter->stats.tprh += IXGB_READ_REG(&adapter->hw, TPRH);
 adapter->stats.gprcl += IXGB_READ_REG(&adapter->hw, GPRCL);
 adapter->stats.gprch += IXGB_READ_REG(&adapter->hw, GPRCH);
 adapter->stats.uprcl += IXGB_READ_REG(&adapter->hw, UPRCL);
 adapter->stats.uprch += IXGB_READ_REG(&adapter->hw, UPRCH);
 adapter->stats.vprcl += IXGB_READ_REG(&adapter->hw, VPRCL);
 adapter->stats.vprch += IXGB_READ_REG(&adapter->hw, VPRCH);
 adapter->stats.jprcl += IXGB_READ_REG(&adapter->hw, JPRCL);
 adapter->stats.jprch += IXGB_READ_REG(&adapter->hw, JPRCH);
 adapter->stats.gorcl += IXGB_READ_REG(&adapter->hw, GORCL);
 adapter->stats.gorch += IXGB_READ_REG(&adapter->hw, GORCH);
 adapter->stats.torl += IXGB_READ_REG(&adapter->hw, TORL);
 adapter->stats.torh += IXGB_READ_REG(&adapter->hw, TORH);
 adapter->stats.rnbc += IXGB_READ_REG(&adapter->hw, RNBC);
 adapter->stats.ruc += IXGB_READ_REG(&adapter->hw, RUC);
 adapter->stats.roc += IXGB_READ_REG(&adapter->hw, ROC);
 adapter->stats.rlec += IXGB_READ_REG(&adapter->hw, RLEC);
 adapter->stats.crcerrs += IXGB_READ_REG(&adapter->hw, CRCERRS);
 adapter->stats.icbc += IXGB_READ_REG(&adapter->hw, ICBC);
 adapter->stats.ecbc += IXGB_READ_REG(&adapter->hw, ECBC);
 adapter->stats.mpc += IXGB_READ_REG(&adapter->hw, MPC);
 adapter->stats.tptl += IXGB_READ_REG(&adapter->hw, TPTL);
 adapter->stats.tpth += IXGB_READ_REG(&adapter->hw, TPTH);
 adapter->stats.gptcl += IXGB_READ_REG(&adapter->hw, GPTCL);
 adapter->stats.gptch += IXGB_READ_REG(&adapter->hw, GPTCH);
 adapter->stats.bptcl += IXGB_READ_REG(&adapter->hw, BPTCL);
 adapter->stats.bptch += IXGB_READ_REG(&adapter->hw, BPTCH);
 adapter->stats.mptcl += IXGB_READ_REG(&adapter->hw, MPTCL);
 adapter->stats.mptch += IXGB_READ_REG(&adapter->hw, MPTCH);
 adapter->stats.uptcl += IXGB_READ_REG(&adapter->hw, UPTCL);
 adapter->stats.uptch += IXGB_READ_REG(&adapter->hw, UPTCH);
 adapter->stats.vptcl += IXGB_READ_REG(&adapter->hw, VPTCL);
 adapter->stats.vptch += IXGB_READ_REG(&adapter->hw, VPTCH);
 adapter->stats.jptcl += IXGB_READ_REG(&adapter->hw, JPTCL);
 adapter->stats.jptch += IXGB_READ_REG(&adapter->hw, JPTCH);
 adapter->stats.gotcl += IXGB_READ_REG(&adapter->hw, GOTCL);
 adapter->stats.gotch += IXGB_READ_REG(&adapter->hw, GOTCH);
 adapter->stats.totl += IXGB_READ_REG(&adapter->hw, TOTL);
 adapter->stats.toth += IXGB_READ_REG(&adapter->hw, TOTH);
 adapter->stats.dc += IXGB_READ_REG(&adapter->hw, DC);
 adapter->stats.plt64c += IXGB_READ_REG(&adapter->hw, PLT64C);
 adapter->stats.tsctc += IXGB_READ_REG(&adapter->hw, TSCTC);
 adapter->stats.tsctfc += IXGB_READ_REG(&adapter->hw, TSCTFC);
 adapter->stats.ibic += IXGB_READ_REG(&adapter->hw, IBIC);
 adapter->stats.rfc += IXGB_READ_REG(&adapter->hw, RFC);
 adapter->stats.lfc += IXGB_READ_REG(&adapter->hw, LFC);
 adapter->stats.pfrc += IXGB_READ_REG(&adapter->hw, PFRC);
 adapter->stats.pftc += IXGB_READ_REG(&adapter->hw, PFTC);
 adapter->stats.mcfrc += IXGB_READ_REG(&adapter->hw, MCFRC);
 adapter->stats.mcftc += IXGB_READ_REG(&adapter->hw, MCFTC);
 adapter->stats.xonrxc += IXGB_READ_REG(&adapter->hw, XONRXC);
 adapter->stats.xontxc += IXGB_READ_REG(&adapter->hw, XONTXC);
 adapter->stats.xoffrxc += IXGB_READ_REG(&adapter->hw, XOFFRXC);
 adapter->stats.xofftxc += IXGB_READ_REG(&adapter->hw, XOFFTXC);
 adapter->stats.rjc += IXGB_READ_REG(&adapter->hw, RJC);



 netdev->stats.rx_packets = adapter->stats.gprcl;
 netdev->stats.tx_packets = adapter->stats.gptcl;
 netdev->stats.rx_bytes = adapter->stats.gorcl;
 netdev->stats.tx_bytes = adapter->stats.gotcl;
 netdev->stats.multicast = adapter->stats.mprcl;
 netdev->stats.collisions = 0;



 netdev->stats.rx_errors =
                                 adapter->stats.crcerrs +
     adapter->stats.ruc +
     adapter->stats.roc +
     adapter->stats.icbc +
     adapter->stats.ecbc + adapter->stats.mpc;





 netdev->stats.rx_crc_errors = adapter->stats.crcerrs;
 netdev->stats.rx_fifo_errors = adapter->stats.mpc;
 netdev->stats.rx_missed_errors = adapter->stats.mpc;
 netdev->stats.rx_over_errors = adapter->stats.mpc;

 netdev->stats.tx_errors = 0;
 netdev->stats.rx_frame_errors = 0;
 netdev->stats.tx_aborted_errors = 0;
 netdev->stats.tx_carrier_errors = 0;
 netdev->stats.tx_fifo_errors = 0;
 netdev->stats.tx_heartbeat_errors = 0;
 netdev->stats.tx_window_errors = 0;
}
