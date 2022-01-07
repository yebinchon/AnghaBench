
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ctrlmode; int state; } ;
struct at91_priv {TYPE_1__ can; } ;


 int AT91_IDR ;
 int AT91_IER ;
 int AT91_IRQ_ALL ;
 int AT91_IRQ_ERRP ;
 int AT91_IRQ_ERR_FRAME ;
 int AT91_MR ;
 int AT91_MR_ABM ;
 int AT91_MR_CANEN ;
 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_STATE_ERROR_ACTIVE ;
 int at91_read (struct at91_priv*,int ) ;
 int at91_set_bittiming (struct net_device*) ;
 int at91_setup_mailboxes (struct net_device*) ;
 int at91_write (struct at91_priv*,int ,int) ;
 int get_irq_mb_rx (struct at91_priv*) ;
 struct at91_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void at91_chip_start(struct net_device *dev)
{
 struct at91_priv *priv = netdev_priv(dev);
 u32 reg_mr, reg_ier;


 at91_write(priv, AT91_IDR, AT91_IRQ_ALL);


 reg_mr = at91_read(priv, AT91_MR);
 at91_write(priv, AT91_MR, reg_mr & ~AT91_MR_CANEN);

 at91_set_bittiming(dev);
 at91_setup_mailboxes(dev);


 if (priv->can.ctrlmode & CAN_CTRLMODE_LISTENONLY)
  reg_mr = AT91_MR_CANEN | AT91_MR_ABM;
 else
  reg_mr = AT91_MR_CANEN;
 at91_write(priv, AT91_MR, reg_mr);

 priv->can.state = CAN_STATE_ERROR_ACTIVE;


 reg_ier = get_irq_mb_rx(priv) | AT91_IRQ_ERRP | AT91_IRQ_ERR_FRAME;
 at91_write(priv, AT91_IDR, AT91_IRQ_ALL);
 at91_write(priv, AT91_IER, reg_ier);
}
