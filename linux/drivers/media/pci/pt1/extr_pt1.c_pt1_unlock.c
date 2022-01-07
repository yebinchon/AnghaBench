
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt1 {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int dev_err (int *,char*) ;
 int pt1_read_reg (struct pt1*,int ) ;
 int pt1_write_reg (struct pt1*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int pt1_unlock(struct pt1 *pt1)
{
 int i;
 pt1_write_reg(pt1, 0, 0x00000008);
 for (i = 0; i < 3; i++) {
  if (pt1_read_reg(pt1, 0) & 0x80000000)
   return 0;
  usleep_range(1000, 2000);
 }
 dev_err(&pt1->pdev->dev, "could not unlock\n");
 return -EIO;
}
