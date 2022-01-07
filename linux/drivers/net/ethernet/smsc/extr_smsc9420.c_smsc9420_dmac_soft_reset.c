
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc9420_pdata {int dev; } ;


 int BUS_MODE ;
 int BUS_MODE_SWR_ ;
 int drv ;
 int netif_warn (struct smsc9420_pdata*,int ,int ,char*) ;
 int smsc9420_reg_read (struct smsc9420_pdata*,int ) ;
 int smsc9420_reg_write (struct smsc9420_pdata*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void smsc9420_dmac_soft_reset(struct smsc9420_pdata *pd)
{
 smsc9420_reg_write(pd, BUS_MODE, BUS_MODE_SWR_);
 smsc9420_reg_read(pd, BUS_MODE);
 udelay(2);
 if (smsc9420_reg_read(pd, BUS_MODE) & BUS_MODE_SWR_)
  netif_warn(pd, drv, pd->dev, "Software reset not cleared\n");
}
