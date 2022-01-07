
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;


 int AT91_SECUMOD_RAMRDY ;
 int AT91_SECUMOD_RAMRDY_READY ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int regmap_read_poll_timeout (struct regmap*,int ,int,int,int,int) ;
 struct regmap* syscon_regmap_lookup_by_compatible (char*) ;

__attribute__((used)) static int atmel_securam_wait(void)
{
 struct regmap *regmap;
 u32 val;

 regmap = syscon_regmap_lookup_by_compatible("atmel,sama5d2-secumod");
 if (IS_ERR(regmap))
  return -ENODEV;

 return regmap_read_poll_timeout(regmap, AT91_SECUMOD_RAMRDY, val,
     val & AT91_SECUMOD_RAMRDY_READY,
     10000, 500000);
}
