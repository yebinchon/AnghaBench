
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wbcir_data {scalar_t__ irqmask; scalar_t__ sbase; } ;


 int WBCIR_BANK_0 ;
 scalar_t__ WBCIR_REG_SP3_IER ;
 int outb (scalar_t__,scalar_t__) ;
 int wbcir_select_bank (struct wbcir_data*,int ) ;

__attribute__((used)) static inline void
wbcir_set_irqmask(struct wbcir_data *data, u8 irqmask)
{
 if (data->irqmask == irqmask)
  return;

 wbcir_select_bank(data, WBCIR_BANK_0);
 outb(irqmask, data->sbase + WBCIR_REG_SP3_IER);
 data->irqmask = irqmask;
}
