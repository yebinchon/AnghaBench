
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct host_port_stats {TYPE_1__* mac_stx; } ;
struct emac_stats {int dummy; } ;
struct bnx2x_eth_stats {int pause_frames_sent_lo; int pause_frames_sent_hi; int pause_frames_received_lo; int pause_frames_received_hi; } ;
struct bnx2x {struct bnx2x_eth_stats eth_stats; } ;
struct TYPE_4__ {int emac_stats; } ;
struct TYPE_3__ {int tx_stat_outxoffsent_lo; int tx_stat_outxoffsent_hi; int tx_stat_outxonsent_lo; int tx_stat_outxonsent_hi; int rx_stat_xoffpauseframesreceived_lo; int rx_stat_xoffpauseframesreceived_hi; int rx_stat_xonpauseframesreceived_lo; int rx_stat_xonpauseframesreceived_hi; } ;


 int ADD_64 (int ,int ,int ,int ) ;
 int UPDATE_EXTEND_STAT (int ) ;
 void* bnx2x_sp (struct bnx2x*,int ) ;
 TYPE_2__ mac_stats ;
 int port_stats ;
 int rx_stat_dot3statsalignmenterrors ;
 int rx_stat_dot3statscarriersenseerrors ;
 int rx_stat_dot3statsfcserrors ;
 int rx_stat_dot3statsframestoolong ;
 int rx_stat_etherstatsfragments ;
 int rx_stat_etherstatsjabbers ;
 int rx_stat_etherstatsundersizepkts ;
 int rx_stat_falsecarriererrors ;
 int rx_stat_ifhcinbadoctets ;
 int rx_stat_maccontrolframesreceived ;
 int rx_stat_xoffpauseframesreceived ;
 int rx_stat_xoffstateentered ;
 int rx_stat_xonpauseframesreceived ;
 int tx_stat_dot3statsdeferredtransmissions ;
 int tx_stat_dot3statsexcessivecollisions ;
 int tx_stat_dot3statsinternalmactransmiterrors ;
 int tx_stat_dot3statslatecollisions ;
 int tx_stat_dot3statsmultiplecollisionframes ;
 int tx_stat_dot3statssinglecollisionframes ;
 int tx_stat_etherstatscollisions ;
 int tx_stat_etherstatspkts1024octetsto1522octets ;
 int tx_stat_etherstatspkts128octetsto255octets ;
 int tx_stat_etherstatspkts256octetsto511octets ;
 int tx_stat_etherstatspkts512octetsto1023octets ;
 int tx_stat_etherstatspkts64octets ;
 int tx_stat_etherstatspkts65octetsto127octets ;
 int tx_stat_etherstatspktsover1522octets ;
 int tx_stat_flowcontroldone ;
 int tx_stat_ifhcoutbadoctets ;
 int tx_stat_outxoffsent ;
 int tx_stat_outxonsent ;

__attribute__((used)) static void bnx2x_emac_stats_update(struct bnx2x *bp)
{
 struct emac_stats *new = bnx2x_sp(bp, mac_stats.emac_stats);
 struct host_port_stats *pstats = bnx2x_sp(bp, port_stats);
 struct bnx2x_eth_stats *estats = &bp->eth_stats;

 UPDATE_EXTEND_STAT(rx_stat_ifhcinbadoctets);
 UPDATE_EXTEND_STAT(tx_stat_ifhcoutbadoctets);
 UPDATE_EXTEND_STAT(rx_stat_dot3statsfcserrors);
 UPDATE_EXTEND_STAT(rx_stat_dot3statsalignmenterrors);
 UPDATE_EXTEND_STAT(rx_stat_dot3statscarriersenseerrors);
 UPDATE_EXTEND_STAT(rx_stat_falsecarriererrors);
 UPDATE_EXTEND_STAT(rx_stat_etherstatsundersizepkts);
 UPDATE_EXTEND_STAT(rx_stat_dot3statsframestoolong);
 UPDATE_EXTEND_STAT(rx_stat_etherstatsfragments);
 UPDATE_EXTEND_STAT(rx_stat_etherstatsjabbers);
 UPDATE_EXTEND_STAT(rx_stat_maccontrolframesreceived);
 UPDATE_EXTEND_STAT(rx_stat_xoffstateentered);
 UPDATE_EXTEND_STAT(rx_stat_xonpauseframesreceived);
 UPDATE_EXTEND_STAT(rx_stat_xoffpauseframesreceived);
 UPDATE_EXTEND_STAT(tx_stat_outxonsent);
 UPDATE_EXTEND_STAT(tx_stat_outxoffsent);
 UPDATE_EXTEND_STAT(tx_stat_flowcontroldone);
 UPDATE_EXTEND_STAT(tx_stat_etherstatscollisions);
 UPDATE_EXTEND_STAT(tx_stat_dot3statssinglecollisionframes);
 UPDATE_EXTEND_STAT(tx_stat_dot3statsmultiplecollisionframes);
 UPDATE_EXTEND_STAT(tx_stat_dot3statsdeferredtransmissions);
 UPDATE_EXTEND_STAT(tx_stat_dot3statsexcessivecollisions);
 UPDATE_EXTEND_STAT(tx_stat_dot3statslatecollisions);
 UPDATE_EXTEND_STAT(tx_stat_etherstatspkts64octets);
 UPDATE_EXTEND_STAT(tx_stat_etherstatspkts65octetsto127octets);
 UPDATE_EXTEND_STAT(tx_stat_etherstatspkts128octetsto255octets);
 UPDATE_EXTEND_STAT(tx_stat_etherstatspkts256octetsto511octets);
 UPDATE_EXTEND_STAT(tx_stat_etherstatspkts512octetsto1023octets);
 UPDATE_EXTEND_STAT(tx_stat_etherstatspkts1024octetsto1522octets);
 UPDATE_EXTEND_STAT(tx_stat_etherstatspktsover1522octets);
 UPDATE_EXTEND_STAT(tx_stat_dot3statsinternalmactransmiterrors);

 estats->pause_frames_received_hi =
   pstats->mac_stx[1].rx_stat_xonpauseframesreceived_hi;
 estats->pause_frames_received_lo =
   pstats->mac_stx[1].rx_stat_xonpauseframesreceived_lo;
 ADD_64(estats->pause_frames_received_hi,
        pstats->mac_stx[1].rx_stat_xoffpauseframesreceived_hi,
        estats->pause_frames_received_lo,
        pstats->mac_stx[1].rx_stat_xoffpauseframesreceived_lo);

 estats->pause_frames_sent_hi =
   pstats->mac_stx[1].tx_stat_outxonsent_hi;
 estats->pause_frames_sent_lo =
   pstats->mac_stx[1].tx_stat_outxonsent_lo;
 ADD_64(estats->pause_frames_sent_hi,
        pstats->mac_stx[1].tx_stat_outxoffsent_hi,
        estats->pause_frames_sent_lo,
        pstats->mac_stx[1].tx_stat_outxoffsent_lo);
}
