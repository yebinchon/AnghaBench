
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;
struct et8ek8_reglist {int regs; } ;
struct et8ek8_meta_reglist {int dummy; } ;


 int EINVAL ;
 int et8ek8_i2c_write_regs (struct i2c_client*,int ) ;
 struct et8ek8_reglist* et8ek8_reglist_find_type (struct et8ek8_meta_reglist*,int ) ;

__attribute__((used)) static int et8ek8_i2c_reglist_find_write(struct i2c_client *client,
      struct et8ek8_meta_reglist *meta,
      u16 type)
{
 struct et8ek8_reglist *reglist;

 reglist = et8ek8_reglist_find_type(meta, type);
 if (!reglist)
  return -EINVAL;

 return et8ek8_i2c_write_regs(client, reglist->regs);
}
