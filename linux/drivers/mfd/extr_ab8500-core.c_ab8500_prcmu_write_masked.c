
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ab8500 {int dev; } ;


 int dev_err (int ,char*,int) ;
 int prcmu_abb_write_masked (int ,int ,int *,int *,int) ;

__attribute__((used)) static int ab8500_prcmu_write_masked(struct ab8500 *ab8500, u16 addr, u8 mask,
 u8 data)
{
 int ret;

 ret = prcmu_abb_write_masked((u8)(addr >> 8), (u8)(addr & 0xFF), &data,
  &mask, 1);
 if (ret < 0)
  dev_err(ab8500->dev, "prcmu i2c error %d\n", ret);
 return ret;
}
