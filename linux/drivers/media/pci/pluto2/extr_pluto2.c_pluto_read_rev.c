
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pluto {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int MISC_DVR ;
 int REG_MISC ;
 int dev_info (int *,char*,int,int) ;
 int pluto_readreg (struct pluto*,int ) ;

__attribute__((used)) static void pluto_read_rev(struct pluto *pluto)
{
 u32 val = pluto_readreg(pluto, REG_MISC) & MISC_DVR;
 dev_info(&pluto->pdev->dev, "board revision %d.%d\n",
   (val >> 12) & 0x0f, (val >> 4) & 0xff);
}
