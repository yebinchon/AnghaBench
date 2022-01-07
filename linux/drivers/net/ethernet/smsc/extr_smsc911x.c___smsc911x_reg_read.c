
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flags; } ;
struct smsc911x_data {int ioaddr; TYPE_1__ config; } ;


 int BUG () ;
 int SMSC911X_USE_16BIT ;
 int SMSC911X_USE_32BIT ;
 int readl (int) ;
 int readw (int) ;

__attribute__((used)) static inline u32 __smsc911x_reg_read(struct smsc911x_data *pdata, u32 reg)
{
 if (pdata->config.flags & SMSC911X_USE_32BIT)
  return readl(pdata->ioaddr + reg);

 if (pdata->config.flags & SMSC911X_USE_16BIT)
  return ((readw(pdata->ioaddr + reg) & 0xFFFF) |
   ((readw(pdata->ioaddr + reg + 2) & 0xFFFF) << 16));

 BUG();
 return 0;
}
