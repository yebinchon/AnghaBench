
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int flags; int * netdev_ops; } ;
struct TYPE_6__ {int freq; } ;
struct TYPE_7__ {int echo_skb_max; int ctrlmode_supported; int do_get_berr_counter; int do_set_mode; int do_set_data_bittiming; int do_set_bittiming; int * data_bittiming_const; int * bittiming_const; TYPE_2__ clock; } ;
struct TYPE_5__ {scalar_t__ rxerr; scalar_t__ txerr; } ;
struct kvaser_pciefd_can {scalar_t__ reg_base; TYPE_3__ can; int lock; int echo_lock; scalar_t__ echo_idx; int bec_poll_timer; int flush_comp; int start_comp; TYPE_1__ bec; scalar_t__ err_rep_cnt; scalar_t__ cmd_seq; struct kvaser_pciefd* kv_pcie; } ;
struct kvaser_pciefd {int nr_channels; struct kvaser_pciefd_can** can; TYPE_4__* pci; int freq; scalar_t__ reg_base; } ;
struct TYPE_8__ {int dev; } ;


 int CAN_CTRLMODE_FD ;
 int CAN_CTRLMODE_FD_NON_ISO ;
 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_ONE_SHOT ;
 int ENODEV ;
 int ENOMEM ;
 int IFF_ECHO ;
 int KVASER_PCIEFD_CAN_TX_MAX_COUNT ;
 scalar_t__ KVASER_PCIEFD_KCAN0_BASE ;
 int KVASER_PCIEFD_KCAN_BASE_OFFSET ;
 scalar_t__ KVASER_PCIEFD_KCAN_IEN_REG ;
 int KVASER_PCIEFD_KCAN_IRQ_ABD ;
 scalar_t__ KVASER_PCIEFD_KCAN_IRQ_REG ;
 int KVASER_PCIEFD_KCAN_IRQ_TFD ;
 int KVASER_PCIEFD_KCAN_STAT_CAP ;
 int KVASER_PCIEFD_KCAN_STAT_FD ;
 scalar_t__ KVASER_PCIEFD_KCAN_STAT_REG ;
 int KVASER_PCIEFD_KCAN_TX_NPACKETS_MAX_SHIFT ;
 scalar_t__ KVASER_PCIEFD_KCAN_TX_NPACKETS_REG ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_candev (int,int) ;
 int dev_err (int *,char*,...) ;
 int free_candev (struct net_device*) ;
 int init_completion (int *) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int kvaser_pciefd_bec_poll_timer ;
 int kvaser_pciefd_bittiming_const ;
 int kvaser_pciefd_get_berr_counter ;
 int kvaser_pciefd_netdev_ops ;
 int kvaser_pciefd_pwm_start (struct kvaser_pciefd_can*) ;
 int kvaser_pciefd_set_data_bittiming ;
 int kvaser_pciefd_set_mode ;
 int kvaser_pciefd_set_nominal_bittiming ;
 struct kvaser_pciefd_can* netdev_priv (struct net_device*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int kvaser_pciefd_setup_can_ctrls(struct kvaser_pciefd *pcie)
{
 int i;

 for (i = 0; i < pcie->nr_channels; i++) {
  struct net_device *netdev;
  struct kvaser_pciefd_can *can;
  u32 status, tx_npackets;

  netdev = alloc_candev(sizeof(struct kvaser_pciefd_can),
          KVASER_PCIEFD_CAN_TX_MAX_COUNT);
  if (!netdev)
   return -ENOMEM;

  can = netdev_priv(netdev);
  netdev->netdev_ops = &kvaser_pciefd_netdev_ops;
  can->reg_base = pcie->reg_base + KVASER_PCIEFD_KCAN0_BASE +
    i * KVASER_PCIEFD_KCAN_BASE_OFFSET;

  can->kv_pcie = pcie;
  can->cmd_seq = 0;
  can->err_rep_cnt = 0;
  can->bec.txerr = 0;
  can->bec.rxerr = 0;

  init_completion(&can->start_comp);
  init_completion(&can->flush_comp);
  timer_setup(&can->bec_poll_timer, kvaser_pciefd_bec_poll_timer,
       0);

  tx_npackets = ioread32(can->reg_base +
           KVASER_PCIEFD_KCAN_TX_NPACKETS_REG);
  if (((tx_npackets >> KVASER_PCIEFD_KCAN_TX_NPACKETS_MAX_SHIFT) &
        0xff) < KVASER_PCIEFD_CAN_TX_MAX_COUNT) {
   dev_err(&pcie->pci->dev,
    "Max Tx count is smaller than expected\n");

   free_candev(netdev);
   return -ENODEV;
  }

  can->can.clock.freq = pcie->freq;
  can->can.echo_skb_max = KVASER_PCIEFD_CAN_TX_MAX_COUNT;
  can->echo_idx = 0;
  spin_lock_init(&can->echo_lock);
  spin_lock_init(&can->lock);
  can->can.bittiming_const = &kvaser_pciefd_bittiming_const;
  can->can.data_bittiming_const = &kvaser_pciefd_bittiming_const;

  can->can.do_set_bittiming = kvaser_pciefd_set_nominal_bittiming;
  can->can.do_set_data_bittiming =
   kvaser_pciefd_set_data_bittiming;

  can->can.do_set_mode = kvaser_pciefd_set_mode;
  can->can.do_get_berr_counter = kvaser_pciefd_get_berr_counter;

  can->can.ctrlmode_supported = CAN_CTRLMODE_LISTENONLY |
           CAN_CTRLMODE_FD |
           CAN_CTRLMODE_FD_NON_ISO;

  status = ioread32(can->reg_base + KVASER_PCIEFD_KCAN_STAT_REG);
  if (!(status & KVASER_PCIEFD_KCAN_STAT_FD)) {
   dev_err(&pcie->pci->dev,
    "CAN FD not supported as expected %d\n", i);

   free_candev(netdev);
   return -ENODEV;
  }

  if (status & KVASER_PCIEFD_KCAN_STAT_CAP)
   can->can.ctrlmode_supported |= CAN_CTRLMODE_ONE_SHOT;

  netdev->flags |= IFF_ECHO;

  SET_NETDEV_DEV(netdev, &pcie->pci->dev);

  iowrite32(-1, can->reg_base + KVASER_PCIEFD_KCAN_IRQ_REG);
  iowrite32(KVASER_PCIEFD_KCAN_IRQ_ABD |
     KVASER_PCIEFD_KCAN_IRQ_TFD,
     can->reg_base + KVASER_PCIEFD_KCAN_IEN_REG);

  pcie->can[i] = can;
  kvaser_pciefd_pwm_start(can);
 }

 return 0;
}
