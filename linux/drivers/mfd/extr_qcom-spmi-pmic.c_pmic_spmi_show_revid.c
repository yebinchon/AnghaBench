
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {char* compatible; scalar_t__ data; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 unsigned int PM8110_SUBTYPE ;
 unsigned int PM8226_SUBTYPE ;
 unsigned int PM8941_SUBTYPE ;
 int PMIC_REV2 ;
 int PMIC_REV3 ;
 int PMIC_REV4 ;
 int PMIC_SUBTYPE ;
 int PMIC_TYPE ;
 unsigned int PMIC_TYPE_VALUE ;
 int dev_dbg (struct device*,char*,unsigned int,char const*,unsigned int,unsigned int) ;
 TYPE_1__* pmic_spmi_id_table ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static void pmic_spmi_show_revid(struct regmap *map, struct device *dev)
{
 unsigned int rev2, minor, major, type, subtype;
 const char *name = "unknown";
 int ret, i;

 ret = regmap_read(map, PMIC_TYPE, &type);
 if (ret < 0)
  return;

 if (type != PMIC_TYPE_VALUE)
  return;

 ret = regmap_read(map, PMIC_SUBTYPE, &subtype);
 if (ret < 0)
  return;

 for (i = 0; i < ARRAY_SIZE(pmic_spmi_id_table); i++) {
  if (subtype == (unsigned long)pmic_spmi_id_table[i].data)
   break;
 }

 if (i != ARRAY_SIZE(pmic_spmi_id_table))
  name = pmic_spmi_id_table[i].compatible;

 ret = regmap_read(map, PMIC_REV2, &rev2);
 if (ret < 0)
  return;

 ret = regmap_read(map, PMIC_REV3, &minor);
 if (ret < 0)
  return;

 ret = regmap_read(map, PMIC_REV4, &major);
 if (ret < 0)
  return;







 if ((subtype == PM8941_SUBTYPE || subtype == PM8226_SUBTYPE) &&
     major < 0x02)
  major++;

 if (subtype == PM8110_SUBTYPE)
  minor = rev2;

 dev_dbg(dev, "%x: %s v%d.%d\n", subtype, name, major, minor);
}
