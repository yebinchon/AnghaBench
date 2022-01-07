
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mv88e6xxx_ptp_ops {int arr1_sts_reg; int arr0_sts_reg; } ;
struct mv88e6xxx_port_hwtstamp {int rx_queue2; int rx_queue; } ;
struct mv88e6xxx_chip {TYPE_2__* info; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {struct mv88e6xxx_ptp_ops* ptp_ops; } ;


 int mv88e6xxx_get_rxts (struct mv88e6xxx_chip*,struct mv88e6xxx_port_hwtstamp*,struct sk_buff*,int ,int *) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void mv88e6xxx_rxtstamp_work(struct mv88e6xxx_chip *chip,
        struct mv88e6xxx_port_hwtstamp *ps)
{
 const struct mv88e6xxx_ptp_ops *ptp_ops = chip->info->ops->ptp_ops;
 struct sk_buff *skb;

 skb = skb_dequeue(&ps->rx_queue);

 if (skb)
  mv88e6xxx_get_rxts(chip, ps, skb, ptp_ops->arr0_sts_reg,
       &ps->rx_queue);

 skb = skb_dequeue(&ps->rx_queue2);
 if (skb)
  mv88e6xxx_get_rxts(chip, ps, skb, ptp_ops->arr1_sts_reg,
       &ps->rx_queue2);
}
