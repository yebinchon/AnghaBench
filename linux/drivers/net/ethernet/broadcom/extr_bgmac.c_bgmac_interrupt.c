
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bgmac {int int_mask; int napi; int dev; } ;
typedef int irqreturn_t ;


 int BGMAC_INT_STATUS ;
 int BGMAC_IS_RX ;
 int BGMAC_IS_TX0 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int bgmac_chip_intrs_off (struct bgmac*) ;
 int bgmac_read (struct bgmac*,int ) ;
 int dev_err (int ,char*,int) ;
 int napi_schedule (int *) ;
 struct bgmac* netdev_priv (void*) ;

__attribute__((used)) static irqreturn_t bgmac_interrupt(int irq, void *dev_id)
{
 struct bgmac *bgmac = netdev_priv(dev_id);

 u32 int_status = bgmac_read(bgmac, BGMAC_INT_STATUS);
 int_status &= bgmac->int_mask;

 if (!int_status)
  return IRQ_NONE;

 int_status &= ~(BGMAC_IS_TX0 | BGMAC_IS_RX);
 if (int_status)
  dev_err(bgmac->dev, "Unknown IRQs: 0x%08X\n", int_status);


 bgmac_chip_intrs_off(bgmac);

 napi_schedule(&bgmac->napi);

 return IRQ_HANDLED;
}
