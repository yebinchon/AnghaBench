
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct fimc_dev {int id; struct regmap* sysreg; } ;


 int SYSREG_CAMBLK ;
 unsigned int SYSREG_CAMBLK_FIFORST_ISP ;
 unsigned int SYSREG_CAMBLK_ISPWB_FULL_EN ;
 int SYSREG_ISPBLK ;
 unsigned int SYSREG_ISPBLK_FIFORST_CAM_BLK ;
 int WARN (int,char*,int) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_update_bits (struct regmap*,int ,unsigned int,unsigned int) ;
 int usleep_range (int,int) ;

int fimc_hw_camblk_cfg_writeback(struct fimc_dev *fimc)
{
 struct regmap *map = fimc->sysreg;
 unsigned int mask, val, camblk_cfg;
 int ret;

 if (map == ((void*)0))
  return 0;

 ret = regmap_read(map, SYSREG_CAMBLK, &camblk_cfg);
 if (ret < 0 || ((camblk_cfg & 0x00700000) >> 20 != 0x3))
  return ret;

 if (!WARN(fimc->id >= 3, "not supported id: %d\n", fimc->id))
  val = 0x1 << (fimc->id + 20);
 else
  val = 0;

 mask = SYSREG_CAMBLK_FIFORST_ISP | SYSREG_CAMBLK_ISPWB_FULL_EN;
 ret = regmap_update_bits(map, SYSREG_CAMBLK, mask, val);
 if (ret < 0)
  return ret;

 usleep_range(1000, 2000);

 val |= SYSREG_CAMBLK_FIFORST_ISP;
 ret = regmap_update_bits(map, SYSREG_CAMBLK, mask, val);
 if (ret < 0)
  return ret;

 mask = SYSREG_ISPBLK_FIFORST_CAM_BLK;
 ret = regmap_update_bits(map, SYSREG_ISPBLK, mask, ~mask);
 if (ret < 0)
  return ret;

 usleep_range(1000, 2000);

 return regmap_update_bits(map, SYSREG_ISPBLK, mask, mask);
}
