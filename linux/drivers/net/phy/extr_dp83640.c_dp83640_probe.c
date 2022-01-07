
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ addr; int dev; int bus; } ;
struct phy_device {TYPE_2__ mdio; struct dp83640_private* priv; } ;
struct dp83640_private {int list; struct dp83640_clock* clock; int tx_queue; int rx_queue; int rx_lock; int rxpool; TYPE_1__* rx_pool_data; int rxts; int ts_work; struct phy_device* phydev; } ;
struct dp83640_clock {struct dp83640_private* chosen; int phylist; int ptp_clock; int caps; } ;
struct TYPE_3__ {int list; } ;


 scalar_t__ BROADCAST_ADDR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_RXTS ;
 int PTR_ERR (int ) ;
 scalar_t__ choose_this_phy (struct dp83640_clock*,struct phy_device*) ;
 struct dp83640_clock* dp83640_clock_get_bus (int ) ;
 int dp83640_clock_put (struct dp83640_clock*) ;
 int kfree (struct dp83640_private*) ;
 struct dp83640_private* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int ptp_clock_register (int *,int *) ;
 int rx_timestamp_work ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int dp83640_probe(struct phy_device *phydev)
{
 struct dp83640_clock *clock;
 struct dp83640_private *dp83640;
 int err = -ENOMEM, i;

 if (phydev->mdio.addr == BROADCAST_ADDR)
  return 0;

 clock = dp83640_clock_get_bus(phydev->mdio.bus);
 if (!clock)
  goto no_clock;

 dp83640 = kzalloc(sizeof(struct dp83640_private), GFP_KERNEL);
 if (!dp83640)
  goto no_memory;

 dp83640->phydev = phydev;
 INIT_DELAYED_WORK(&dp83640->ts_work, rx_timestamp_work);

 INIT_LIST_HEAD(&dp83640->rxts);
 INIT_LIST_HEAD(&dp83640->rxpool);
 for (i = 0; i < MAX_RXTS; i++)
  list_add(&dp83640->rx_pool_data[i].list, &dp83640->rxpool);

 phydev->priv = dp83640;

 spin_lock_init(&dp83640->rx_lock);
 skb_queue_head_init(&dp83640->rx_queue);
 skb_queue_head_init(&dp83640->tx_queue);

 dp83640->clock = clock;

 if (choose_this_phy(clock, phydev)) {
  clock->chosen = dp83640;
  clock->ptp_clock = ptp_clock_register(&clock->caps,
            &phydev->mdio.dev);
  if (IS_ERR(clock->ptp_clock)) {
   err = PTR_ERR(clock->ptp_clock);
   goto no_register;
  }
 } else
  list_add_tail(&dp83640->list, &clock->phylist);

 dp83640_clock_put(clock);
 return 0;

no_register:
 clock->chosen = ((void*)0);
 kfree(dp83640);
no_memory:
 dp83640_clock_put(clock);
no_clock:
 return err;
}
