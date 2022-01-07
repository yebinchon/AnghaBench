
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
 int readl (scalar_t__) ;
 int readw (scalar_t__) ;

__attribute__((used)) static inline u32
__smsc911x_reg_read_shift(struct smsc911x_data *pdata, u32 reg)
{
 if (pdata->config.flags & SMSC911X_USE_32BIT)
  return readl(pdata->ioaddr + __smsc_shift(pdata, reg));

 if (pdata->config.flags & SMSC911X_USE_16BIT)
  return (readw(pdata->ioaddr +
    __smsc_shift(pdata, reg)) & 0xFFFF) |
   ((readw(pdata->ioaddr +
   __smsc_shift(pdata, reg + 2)) & 0xFFFF) << 16);

 BUG();
 return 0;
}
