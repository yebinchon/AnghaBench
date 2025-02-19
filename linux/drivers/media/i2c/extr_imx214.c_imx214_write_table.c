
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct reg_8 {scalar_t__ addr; int val; } ;
struct imx214 {int dev; int regmap; } ;


 scalar_t__ IMX214_TABLE_END ;
 scalar_t__ IMX214_TABLE_WAIT_MS ;
 int MAX_CMD ;
 int dev_err (int ,char*,int) ;
 int regmap_bulk_write (int ,scalar_t__,int*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int imx214_write_table(struct imx214 *imx214,
         const struct reg_8 table[])
{
 u8 vals[MAX_CMD];
 int i;
 int ret;

 for (; table->addr != IMX214_TABLE_END ; table++) {
  if (table->addr == IMX214_TABLE_WAIT_MS) {
   usleep_range(table->val * 1000,
         table->val * 1000 + 500);
   continue;
  }

  for (i = 0; i < MAX_CMD; i++) {
   if (table[i].addr != (table[0].addr + i))
    break;
   vals[i] = table[i].val;
  }

  ret = regmap_bulk_write(imx214->regmap, table->addr, vals, i);

  if (ret) {
   dev_err(imx214->dev, "write_table error: %d\n", ret);
   return ret;
  }

  table += i - 1;
 }

 return 0;
}
