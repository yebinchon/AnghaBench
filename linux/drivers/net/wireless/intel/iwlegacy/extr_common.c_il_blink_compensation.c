
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct il_priv {int dummy; } ;


 int IL_ERR (char*) ;

__attribute__((used)) static inline u8
il_blink_compensation(struct il_priv *il, u8 time, u16 compensation)
{
 if (!compensation) {
  IL_ERR("undefined blink compensation: "
         "use pre-defined blinking time\n");
  return time;
 }

 return (u8) ((time * compensation) >> 6);
}
