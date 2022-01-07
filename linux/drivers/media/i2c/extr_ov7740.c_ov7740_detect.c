
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct ov7740 {struct regmap* regmap; } ;


 int ENODEV ;
 int REG_MIDH ;
 int REG_MIDL ;
 int REG_PIDH ;
 int REG_PIDL ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int ov7740_detect(struct ov7740 *ov7740)
{
 struct regmap *regmap = ov7740->regmap;
 unsigned int midh, midl, pidh, pidl;
 int ret;

 ret = regmap_read(regmap, REG_MIDH, &midh);
 if (ret)
  return ret;
 if (midh != 0x7f)
  return -ENODEV;

 ret = regmap_read(regmap, REG_MIDL, &midl);
 if (ret)
  return ret;
 if (midl != 0xa2)
  return -ENODEV;

 ret = regmap_read(regmap, REG_PIDH, &pidh);
 if (ret)
  return ret;
 if (pidh != 0x77)
  return -ENODEV;

 ret = regmap_read(regmap, REG_PIDL, &pidl);
 if (ret)
  return ret;
 if ((pidl != 0x40) && (pidl != 0x41) && (pidl != 0x42))
  return -ENODEV;

 return 0;
}
