
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct twl4030_ins {int delay; int pmb_message; } ;


 int EINVAL ;
 scalar_t__ END_OF_SCRIPT ;
 int twl4030_write_script_ins (scalar_t__,int ,int ,scalar_t__) ;

__attribute__((used)) static int twl4030_write_script(u8 address, struct twl4030_ins *script,
           int len)
{
 int err = -EINVAL;

 for (; len; len--, address++, script++) {
  if (len == 1) {
   err = twl4030_write_script_ins(address,
      script->pmb_message,
      script->delay,
      END_OF_SCRIPT);
   if (err)
    break;
  } else {
   err = twl4030_write_script_ins(address,
      script->pmb_message,
      script->delay,
      address + 1);
   if (err)
    break;
  }
 }
 return err;
}
