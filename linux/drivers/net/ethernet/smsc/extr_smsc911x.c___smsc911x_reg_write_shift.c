
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flags; } ;
struct smsc911x_data {scalar_t__ ioaddr; TYPE_1__ config; } ;


 int BUG () ;
 int SMSC911X_USE_16BIT ;
 int SMSC911X_USE_32BIT ;
 scalar_t__ __smsc_shift (struct smsc911x_data*,int) ;
 int writel (int,scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static inline void
__smsc911x_reg_write_shift(struct smsc911x_data *pdata, u32 reg, u32 val)
{
 if (pdata->config.flags & SMSC911X_USE_32BIT) {
  writel(val, pdata->ioaddr + __smsc_shift(pdata, reg));
  return;
 }

 if (pdata->config.flags & SMSC911X_USE_16BIT) {
  writew(val & 0xFFFF,
   pdata->ioaddr + __smsc_shift(pdata, reg));
  writew((val >> 16) & 0xFFFF,
   pdata->ioaddr + __smsc_shift(pdata, reg + 2));
  return;
 }

 BUG();
}
