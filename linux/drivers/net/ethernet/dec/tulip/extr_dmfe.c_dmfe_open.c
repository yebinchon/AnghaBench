
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int name; } ;
struct TYPE_5__ {scalar_t__ expires; } ;
struct dmfe_board_info {int cr6_data; int NIC_capability; int PHY_reg4; scalar_t__ chip_id; int chip_revision; int dm910x_chk_mode; TYPE_2__ timer; scalar_t__ cr0_data; scalar_t__ first_in_callback; scalar_t__ wait_reset; scalar_t__ rx_avail_cnt; scalar_t__ tx_queue_cnt; scalar_t__ tx_packet_cnt; TYPE_1__* pdev; } ;
struct TYPE_4__ {int irq; } ;


 scalar_t__ CR0_DEFAULT ;
 int CR6_DEFAULT ;
 int CR6_SFT ;
 int DMFE_DBUG (int ,char*,int ) ;
 scalar_t__ DMFE_TIMER_WUT ;
 int DMFE_TXTH_256 ;
 int HZ ;
 int IRQF_SHARED ;
 scalar_t__ PCI_DM9132_ID ;
 int add_timer (TYPE_2__*) ;
 int chkmode ;
 int dmfe_cr6_user_set ;
 int dmfe_init_dm910x (struct net_device*) ;
 int dmfe_interrupt ;
 int dmfe_timer ;
 struct dmfe_board_info* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int request_irq (int const,int ,int ,int ,struct net_device*) ;
 int timer_setup (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int dmfe_open(struct net_device *dev)
{
 struct dmfe_board_info *db = netdev_priv(dev);
 const int irq = db->pdev->irq;
 int ret;

 DMFE_DBUG(0, "dmfe_open", 0);

 ret = request_irq(irq, dmfe_interrupt, IRQF_SHARED, dev->name, dev);
 if (ret)
  return ret;


 db->cr6_data = CR6_DEFAULT | dmfe_cr6_user_set;
 db->tx_packet_cnt = 0;
 db->tx_queue_cnt = 0;
 db->rx_avail_cnt = 0;
 db->wait_reset = 0;

 db->first_in_callback = 0;
 db->NIC_capability = 0xf;
 db->PHY_reg4 = 0x1e0;


 if ( !chkmode || (db->chip_id == PCI_DM9132_ID) ||
  (db->chip_revision >= 0x30) ) {
      db->cr6_data |= DMFE_TXTH_256;
  db->cr0_data = CR0_DEFAULT;
  db->dm910x_chk_mode=4;
  } else {
  db->cr6_data |= CR6_SFT;
  db->cr0_data = 0;
  db->dm910x_chk_mode = 1;
 }


 dmfe_init_dm910x(dev);


 netif_wake_queue(dev);


 timer_setup(&db->timer, dmfe_timer, 0);
 db->timer.expires = DMFE_TIMER_WUT + HZ * 2;
 add_timer(&db->timer);

 return 0;
}
