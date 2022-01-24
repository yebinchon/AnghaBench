#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int multicast; int rx_errors; int rx_crc_errors; int rx_fifo_errors; int rx_missed_errors; int rx_over_errors; scalar_t__ tx_window_errors; scalar_t__ tx_heartbeat_errors; scalar_t__ tx_fifo_errors; scalar_t__ tx_carrier_errors; scalar_t__ tx_aborted_errors; scalar_t__ rx_frame_errors; scalar_t__ tx_errors; scalar_t__ collisions; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  rx_packets; } ;
struct net_device {int flags; TYPE_2__ stats; } ;
struct TYPE_3__ {int mprcl; int mprch; int bprcl; int ruc; int roc; int crcerrs; int icbc; int ecbc; int mpc; int /*<<< orphan*/  gotcl; int /*<<< orphan*/  gorcl; int /*<<< orphan*/  gptcl; int /*<<< orphan*/  gprcl; int /*<<< orphan*/  rjc; int /*<<< orphan*/  xofftxc; int /*<<< orphan*/  xoffrxc; int /*<<< orphan*/  xontxc; int /*<<< orphan*/  xonrxc; int /*<<< orphan*/  mcftc; int /*<<< orphan*/  mcfrc; int /*<<< orphan*/  pftc; int /*<<< orphan*/  pfrc; int /*<<< orphan*/  lfc; int /*<<< orphan*/  rfc; int /*<<< orphan*/  ibic; int /*<<< orphan*/  tsctfc; int /*<<< orphan*/  tsctc; int /*<<< orphan*/  plt64c; int /*<<< orphan*/  dc; int /*<<< orphan*/  toth; int /*<<< orphan*/  totl; int /*<<< orphan*/  gotch; int /*<<< orphan*/  jptch; int /*<<< orphan*/  jptcl; int /*<<< orphan*/  vptch; int /*<<< orphan*/  vptcl; int /*<<< orphan*/  uptch; int /*<<< orphan*/  uptcl; int /*<<< orphan*/  mptch; int /*<<< orphan*/  mptcl; int /*<<< orphan*/  bptch; int /*<<< orphan*/  bptcl; int /*<<< orphan*/  gptch; int /*<<< orphan*/  tpth; int /*<<< orphan*/  tptl; int /*<<< orphan*/  rlec; int /*<<< orphan*/  rnbc; int /*<<< orphan*/  torh; int /*<<< orphan*/  torl; int /*<<< orphan*/  gorch; int /*<<< orphan*/  jprch; int /*<<< orphan*/  jprcl; int /*<<< orphan*/  vprch; int /*<<< orphan*/  vprcl; int /*<<< orphan*/  uprch; int /*<<< orphan*/  uprcl; int /*<<< orphan*/  gprch; int /*<<< orphan*/  tprh; int /*<<< orphan*/  tprl; int /*<<< orphan*/  bprch; } ;
struct ixgb_adapter {TYPE_1__ stats; int /*<<< orphan*/  hw; struct pci_dev* pdev; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPRCH ; 
 int /*<<< orphan*/  BPRCL ; 
 int /*<<< orphan*/  BPTCH ; 
 int /*<<< orphan*/  BPTCL ; 
 int /*<<< orphan*/  CRCERRS ; 
 int /*<<< orphan*/  DC ; 
 int /*<<< orphan*/  ECBC ; 
 int /*<<< orphan*/  GORCH ; 
 int /*<<< orphan*/  GORCL ; 
 int /*<<< orphan*/  GOTCH ; 
 int /*<<< orphan*/  GOTCL ; 
 int /*<<< orphan*/  GPRCH ; 
 int /*<<< orphan*/  GPRCL ; 
 int /*<<< orphan*/  GPTCH ; 
 int /*<<< orphan*/  GPTCL ; 
 int /*<<< orphan*/  IBIC ; 
 int /*<<< orphan*/  ICBC ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ IXGB_MAX_NUM_MULTICAST_ADDRESSES ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JPRCH ; 
 int /*<<< orphan*/  JPRCL ; 
 int /*<<< orphan*/  JPTCH ; 
 int /*<<< orphan*/  JPTCL ; 
 int /*<<< orphan*/  LFC ; 
 int /*<<< orphan*/  MCFRC ; 
 int /*<<< orphan*/  MCFTC ; 
 int /*<<< orphan*/  MPC ; 
 int /*<<< orphan*/  MPRCH ; 
 int /*<<< orphan*/  MPRCL ; 
 int /*<<< orphan*/  MPTCH ; 
 int /*<<< orphan*/  MPTCL ; 
 int /*<<< orphan*/  PFRC ; 
 int /*<<< orphan*/  PFTC ; 
 int /*<<< orphan*/  PLT64C ; 
 int /*<<< orphan*/  RFC ; 
 int /*<<< orphan*/  RJC ; 
 int /*<<< orphan*/  RLEC ; 
 int /*<<< orphan*/  RNBC ; 
 int /*<<< orphan*/  ROC ; 
 int /*<<< orphan*/  RUC ; 
 int /*<<< orphan*/  TORH ; 
 int /*<<< orphan*/  TORL ; 
 int /*<<< orphan*/  TOTH ; 
 int /*<<< orphan*/  TOTL ; 
 int /*<<< orphan*/  TPRH ; 
 int /*<<< orphan*/  TPRL ; 
 int /*<<< orphan*/  TPTH ; 
 int /*<<< orphan*/  TPTL ; 
 int /*<<< orphan*/  TSCTC ; 
 int /*<<< orphan*/  TSCTFC ; 
 int /*<<< orphan*/  UPRCH ; 
 int /*<<< orphan*/  UPRCL ; 
 int /*<<< orphan*/  UPTCH ; 
 int /*<<< orphan*/  UPTCL ; 
 int /*<<< orphan*/  VPRCH ; 
 int /*<<< orphan*/  VPRCL ; 
 int /*<<< orphan*/  VPTCH ; 
 int /*<<< orphan*/  VPTCL ; 
 int /*<<< orphan*/  XOFFRXC ; 
 int /*<<< orphan*/  XOFFTXC ; 
 int /*<<< orphan*/  XONRXC ; 
 int /*<<< orphan*/  XONTXC ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 

void
FUNC3(struct ixgb_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct pci_dev *pdev = adapter->pdev;

	/* Prevent stats update while adapter is being reset */
	if (FUNC2(pdev))
		return;

	if ((netdev->flags & IFF_PROMISC) || (netdev->flags & IFF_ALLMULTI) ||
	   (FUNC1(netdev) > IXGB_MAX_NUM_MULTICAST_ADDRESSES)) {
		u64 multi = FUNC0(&adapter->hw, MPRCL);
		u32 bcast_l = FUNC0(&adapter->hw, BPRCL);
		u32 bcast_h = FUNC0(&adapter->hw, BPRCH);
		u64 bcast = ((u64)bcast_h << 32) | bcast_l;

		multi |= ((u64)FUNC0(&adapter->hw, MPRCH) << 32);
		/* fix up multicast stats by removing broadcasts */
		if (multi >= bcast)
			multi -= bcast;

		adapter->stats.mprcl += (multi & 0xFFFFFFFF);
		adapter->stats.mprch += (multi >> 32);
		adapter->stats.bprcl += bcast_l;
		adapter->stats.bprch += bcast_h;
	} else {
		adapter->stats.mprcl += FUNC0(&adapter->hw, MPRCL);
		adapter->stats.mprch += FUNC0(&adapter->hw, MPRCH);
		adapter->stats.bprcl += FUNC0(&adapter->hw, BPRCL);
		adapter->stats.bprch += FUNC0(&adapter->hw, BPRCH);
	}
	adapter->stats.tprl += FUNC0(&adapter->hw, TPRL);
	adapter->stats.tprh += FUNC0(&adapter->hw, TPRH);
	adapter->stats.gprcl += FUNC0(&adapter->hw, GPRCL);
	adapter->stats.gprch += FUNC0(&adapter->hw, GPRCH);
	adapter->stats.uprcl += FUNC0(&adapter->hw, UPRCL);
	adapter->stats.uprch += FUNC0(&adapter->hw, UPRCH);
	adapter->stats.vprcl += FUNC0(&adapter->hw, VPRCL);
	adapter->stats.vprch += FUNC0(&adapter->hw, VPRCH);
	adapter->stats.jprcl += FUNC0(&adapter->hw, JPRCL);
	adapter->stats.jprch += FUNC0(&adapter->hw, JPRCH);
	adapter->stats.gorcl += FUNC0(&adapter->hw, GORCL);
	adapter->stats.gorch += FUNC0(&adapter->hw, GORCH);
	adapter->stats.torl += FUNC0(&adapter->hw, TORL);
	adapter->stats.torh += FUNC0(&adapter->hw, TORH);
	adapter->stats.rnbc += FUNC0(&adapter->hw, RNBC);
	adapter->stats.ruc += FUNC0(&adapter->hw, RUC);
	adapter->stats.roc += FUNC0(&adapter->hw, ROC);
	adapter->stats.rlec += FUNC0(&adapter->hw, RLEC);
	adapter->stats.crcerrs += FUNC0(&adapter->hw, CRCERRS);
	adapter->stats.icbc += FUNC0(&adapter->hw, ICBC);
	adapter->stats.ecbc += FUNC0(&adapter->hw, ECBC);
	adapter->stats.mpc += FUNC0(&adapter->hw, MPC);
	adapter->stats.tptl += FUNC0(&adapter->hw, TPTL);
	adapter->stats.tpth += FUNC0(&adapter->hw, TPTH);
	adapter->stats.gptcl += FUNC0(&adapter->hw, GPTCL);
	adapter->stats.gptch += FUNC0(&adapter->hw, GPTCH);
	adapter->stats.bptcl += FUNC0(&adapter->hw, BPTCL);
	adapter->stats.bptch += FUNC0(&adapter->hw, BPTCH);
	adapter->stats.mptcl += FUNC0(&adapter->hw, MPTCL);
	adapter->stats.mptch += FUNC0(&adapter->hw, MPTCH);
	adapter->stats.uptcl += FUNC0(&adapter->hw, UPTCL);
	adapter->stats.uptch += FUNC0(&adapter->hw, UPTCH);
	adapter->stats.vptcl += FUNC0(&adapter->hw, VPTCL);
	adapter->stats.vptch += FUNC0(&adapter->hw, VPTCH);
	adapter->stats.jptcl += FUNC0(&adapter->hw, JPTCL);
	adapter->stats.jptch += FUNC0(&adapter->hw, JPTCH);
	adapter->stats.gotcl += FUNC0(&adapter->hw, GOTCL);
	adapter->stats.gotch += FUNC0(&adapter->hw, GOTCH);
	adapter->stats.totl += FUNC0(&adapter->hw, TOTL);
	adapter->stats.toth += FUNC0(&adapter->hw, TOTH);
	adapter->stats.dc += FUNC0(&adapter->hw, DC);
	adapter->stats.plt64c += FUNC0(&adapter->hw, PLT64C);
	adapter->stats.tsctc += FUNC0(&adapter->hw, TSCTC);
	adapter->stats.tsctfc += FUNC0(&adapter->hw, TSCTFC);
	adapter->stats.ibic += FUNC0(&adapter->hw, IBIC);
	adapter->stats.rfc += FUNC0(&adapter->hw, RFC);
	adapter->stats.lfc += FUNC0(&adapter->hw, LFC);
	adapter->stats.pfrc += FUNC0(&adapter->hw, PFRC);
	adapter->stats.pftc += FUNC0(&adapter->hw, PFTC);
	adapter->stats.mcfrc += FUNC0(&adapter->hw, MCFRC);
	adapter->stats.mcftc += FUNC0(&adapter->hw, MCFTC);
	adapter->stats.xonrxc += FUNC0(&adapter->hw, XONRXC);
	adapter->stats.xontxc += FUNC0(&adapter->hw, XONTXC);
	adapter->stats.xoffrxc += FUNC0(&adapter->hw, XOFFRXC);
	adapter->stats.xofftxc += FUNC0(&adapter->hw, XOFFTXC);
	adapter->stats.rjc += FUNC0(&adapter->hw, RJC);

	/* Fill out the OS statistics structure */

	netdev->stats.rx_packets = adapter->stats.gprcl;
	netdev->stats.tx_packets = adapter->stats.gptcl;
	netdev->stats.rx_bytes = adapter->stats.gorcl;
	netdev->stats.tx_bytes = adapter->stats.gotcl;
	netdev->stats.multicast = adapter->stats.mprcl;
	netdev->stats.collisions = 0;

	/* ignore RLEC as it reports errors for padded (<64bytes) frames
	 * with a length in the type/len field */
	netdev->stats.rx_errors =
	    /* adapter->stats.rnbc + */ adapter->stats.crcerrs +
	    adapter->stats.ruc +
	    adapter->stats.roc /*+ adapter->stats.rlec */  +
	    adapter->stats.icbc +
	    adapter->stats.ecbc + adapter->stats.mpc;

	/* see above
	 * netdev->stats.rx_length_errors = adapter->stats.rlec;
	 */

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