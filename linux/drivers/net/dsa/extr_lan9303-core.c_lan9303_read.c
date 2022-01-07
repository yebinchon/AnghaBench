
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;


 int EAGAIN ;
 int EIO ;
 int msleep (int) ;
 int regmap_read (struct regmap*,unsigned int,int *) ;

__attribute__((used)) static int lan9303_read(struct regmap *regmap, unsigned int offset, u32 *reg)
{
 int ret, i;






 for (i = 0; i < 5; i++) {
  ret = regmap_read(regmap, offset, reg);
  if (!ret)
   return 0;
  if (ret != -EAGAIN)
   break;
  msleep(500);
 }

 return -EIO;
}
