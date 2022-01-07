
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_port {int first_rxq; int priv; int id; } ;


 int MVPP2_CLS_OVERSIZE_RXQ_LOW_BITS ;
 int MVPP2_CLS_OVERSIZE_RXQ_LOW_MASK ;
 int MVPP2_CLS_OVERSIZE_RXQ_LOW_REG (int ) ;
 int MVPP2_CLS_SWFWD_P2HQ_REG (int ) ;
 int MVPP2_CLS_SWFWD_PCTRL_MASK (int ) ;
 int MVPP2_CLS_SWFWD_PCTRL_REG ;
 int mvpp2_read (int ,int ) ;
 int mvpp2_write (int ,int ,int) ;

void mvpp2_cls_oversize_rxq_set(struct mvpp2_port *port)
{
 u32 val;

 mvpp2_write(port->priv, MVPP2_CLS_OVERSIZE_RXQ_LOW_REG(port->id),
      port->first_rxq & MVPP2_CLS_OVERSIZE_RXQ_LOW_MASK);

 mvpp2_write(port->priv, MVPP2_CLS_SWFWD_P2HQ_REG(port->id),
      (port->first_rxq >> MVPP2_CLS_OVERSIZE_RXQ_LOW_BITS));

 val = mvpp2_read(port->priv, MVPP2_CLS_SWFWD_PCTRL_REG);
 val |= MVPP2_CLS_SWFWD_PCTRL_MASK(port->id);
 mvpp2_write(port->priv, MVPP2_CLS_SWFWD_PCTRL_REG, val);
}
