
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tx_heartbeat_errors; int tx_fifo_errors; int tx_carrier_errors; int tx_aborted_errors; scalar_t__ rx_missed_errors; int rx_fifo_errors; int rx_frame_errors; int rx_crc_errors; scalar_t__ rx_length_errors; scalar_t__ collisions; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_7__ {int rcvcco; int rntpco; int mpco; int cerr; int uflo; int lcar; int rtry; scalar_t__ mpc; int oflo; int fram; int fcs; scalar_t__ rntpc; scalar_t__ rcvcc; } ;
struct TYPE_8__ {TYPE_2__ mace_stats; } ;
typedef TYPE_3__ mace_private ;


 int MACE_MPC ;
 int MACE_RCVCC ;
 int MACE_RNTPC ;
 scalar_t__ mace_read (TYPE_3__*,unsigned int,int ) ;
 TYPE_3__* netdev_priv (struct net_device*) ;

__attribute__((used)) static void update_stats(unsigned int ioaddr, struct net_device *dev)
{
  mace_private *lp = netdev_priv(dev);

  lp->mace_stats.rcvcc += mace_read(lp, ioaddr, MACE_RCVCC);
  lp->mace_stats.rntpc += mace_read(lp, ioaddr, MACE_RNTPC);
  lp->mace_stats.mpc += mace_read(lp, ioaddr, MACE_MPC);







  dev->stats.collisions =
    lp->mace_stats.rcvcco * 256 + lp->mace_stats.rcvcc;






  dev->stats.rx_length_errors =
    lp->mace_stats.rntpco * 256 + lp->mace_stats.rntpc;

  dev->stats.rx_crc_errors = lp->mace_stats.fcs;
  dev->stats.rx_frame_errors = lp->mace_stats.fram;
  dev->stats.rx_fifo_errors = lp->mace_stats.oflo;
  dev->stats.rx_missed_errors =
    lp->mace_stats.mpco * 256 + lp->mace_stats.mpc;


  dev->stats.tx_aborted_errors = lp->mace_stats.rtry;
  dev->stats.tx_carrier_errors = lp->mace_stats.lcar;

  dev->stats.tx_fifo_errors = lp->mace_stats.uflo;
  dev->stats.tx_heartbeat_errors = lp->mace_stats.cerr;

}
