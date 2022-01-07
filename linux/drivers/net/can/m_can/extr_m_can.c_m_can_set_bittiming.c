
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int freq; } ;
struct can_bittiming {int brp; int sjw; int prop_seg; int phase_seg1; int phase_seg2; int bitrate; int sample_point; } ;
struct TYPE_4__ {int ctrlmode; TYPE_1__ clock; struct can_bittiming data_bittiming; struct can_bittiming bittiming; } ;
struct m_can_classdev {TYPE_2__ can; } ;


 int CAN_CTRLMODE_FD ;
 int DBTP_DBRP_SHIFT ;
 int DBTP_DSJW_SHIFT ;
 int DBTP_DTSEG1_SHIFT ;
 int DBTP_DTSEG2_SHIFT ;
 int DBTP_TDC ;
 int M_CAN_DBTP ;
 int M_CAN_NBTP ;
 int M_CAN_TDCR ;
 int NBTP_NBRP_SHIFT ;
 int NBTP_NSJW_SHIFT ;
 int NBTP_NTSEG1_SHIFT ;
 int NBTP_NTSEG2_SHIFT ;
 int TDCR_TDCO_SHIFT ;
 int m_can_write (struct m_can_classdev*,int ,int) ;
 struct m_can_classdev* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int) ;

__attribute__((used)) static int m_can_set_bittiming(struct net_device *dev)
{
 struct m_can_classdev *cdev = netdev_priv(dev);
 const struct can_bittiming *bt = &cdev->can.bittiming;
 const struct can_bittiming *dbt = &cdev->can.data_bittiming;
 u16 brp, sjw, tseg1, tseg2;
 u32 reg_btp;

 brp = bt->brp - 1;
 sjw = bt->sjw - 1;
 tseg1 = bt->prop_seg + bt->phase_seg1 - 1;
 tseg2 = bt->phase_seg2 - 1;
 reg_btp = (brp << NBTP_NBRP_SHIFT) | (sjw << NBTP_NSJW_SHIFT) |
  (tseg1 << NBTP_NTSEG1_SHIFT) | (tseg2 << NBTP_NTSEG2_SHIFT);
 m_can_write(cdev, M_CAN_NBTP, reg_btp);

 if (cdev->can.ctrlmode & CAN_CTRLMODE_FD) {
  reg_btp = 0;
  brp = dbt->brp - 1;
  sjw = dbt->sjw - 1;
  tseg1 = dbt->prop_seg + dbt->phase_seg1 - 1;
  tseg2 = dbt->phase_seg2 - 1;





  if (dbt->bitrate > 2500000) {
   u32 tdco, ssp;




   ssp = dbt->sample_point;




   tdco = (cdev->can.clock.freq / 1000) *
          ssp / dbt->bitrate;


   if (tdco > 127) {
    netdev_warn(dev, "TDCO value of %u is beyond maximum. Using maximum possible value\n",
         tdco);
    tdco = 127;
   }

   reg_btp |= DBTP_TDC;
   m_can_write(cdev, M_CAN_TDCR,
        tdco << TDCR_TDCO_SHIFT);
  }

  reg_btp |= (brp << DBTP_DBRP_SHIFT) |
      (sjw << DBTP_DSJW_SHIFT) |
      (tseg1 << DBTP_DTSEG1_SHIFT) |
      (tseg2 << DBTP_DTSEG2_SHIFT);

  m_can_write(cdev, M_CAN_DBTP, reg_btp);
 }

 return 0;
}
