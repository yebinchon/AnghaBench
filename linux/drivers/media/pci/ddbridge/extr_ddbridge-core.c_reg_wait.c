
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ddb {int dummy; } ;


 int ndelay (int) ;
 int safe_ddbreadl (struct ddb*,int) ;

__attribute__((used)) static int reg_wait(struct ddb *dev, u32 reg, u32 bit)
{
 u32 count = 0;

 while (safe_ddbreadl(dev, reg) & bit) {
  ndelay(10);
  if (++count == 100)
   return -1;
 }
 return 0;
}
