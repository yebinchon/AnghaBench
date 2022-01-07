
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbcir_data {scalar_t__ rxstate; scalar_t__ sbase; scalar_t__ carrier_report_enabled; } ;
struct rc_dev {struct wbcir_data* priv; } ;


 scalar_t__ WBCIR_REG_SP3_ASCR ;
 scalar_t__ WBCIR_RXSTATE_ACTIVE ;
 scalar_t__ WBCIR_RXSTATE_INACTIVE ;
 int WBCIR_RX_DISABLE ;
 int outb (int ,scalar_t__) ;
 int wbcir_carrier_report (struct wbcir_data*) ;

__attribute__((used)) static void
wbcir_idle_rx(struct rc_dev *dev, bool idle)
{
 struct wbcir_data *data = dev->priv;

 if (!idle && data->rxstate == WBCIR_RXSTATE_INACTIVE)
  data->rxstate = WBCIR_RXSTATE_ACTIVE;

 if (idle && data->rxstate != WBCIR_RXSTATE_INACTIVE) {
  data->rxstate = WBCIR_RXSTATE_INACTIVE;

  if (data->carrier_report_enabled)
   wbcir_carrier_report(data);


  outb(WBCIR_RX_DISABLE, data->sbase + WBCIR_REG_SP3_ASCR);
 }
}
