
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rvin_dev {int dev; } ;


 int VNCSI_IFMD_CSI_CHSEL (int ) ;
 int VNCSI_IFMD_DES0 ;
 int VNCSI_IFMD_DES1 ;
 int VNCSI_IFMD_REG ;
 int VNMC_REG ;
 int VNMC_VUP ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int rvin_read (struct rvin_dev*,int ) ;
 int rvin_write (struct rvin_dev*,int,int ) ;
 int vin_dbg (struct rvin_dev*,char*,int) ;

int rvin_set_channel_routing(struct rvin_dev *vin, u8 chsel)
{
 u32 ifmd, vnmc;
 int ret;

 ret = pm_runtime_get_sync(vin->dev);
 if (ret < 0)
  return ret;


 vnmc = rvin_read(vin, VNMC_REG);
 rvin_write(vin, vnmc & ~VNMC_VUP, VNMC_REG);

 ifmd = VNCSI_IFMD_DES1 | VNCSI_IFMD_DES0 | VNCSI_IFMD_CSI_CHSEL(chsel);

 rvin_write(vin, ifmd, VNCSI_IFMD_REG);

 vin_dbg(vin, "Set IFMD 0x%x\n", ifmd);


 rvin_write(vin, vnmc, VNMC_REG);

 pm_runtime_put(vin->dev);

 return 0;
}
