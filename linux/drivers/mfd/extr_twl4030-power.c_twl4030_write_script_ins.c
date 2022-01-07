
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int twl4030_write_script_byte (int ,int) ;

__attribute__((used)) static int twl4030_write_script_ins(u8 address, u16 pmb_message,
        u8 delay, u8 next)
{
 int err;

 address *= 4;
 err = twl4030_write_script_byte(address++, pmb_message >> 8);
 if (err)
  goto out;
 err = twl4030_write_script_byte(address++, pmb_message & 0xff);
 if (err)
  goto out;
 err = twl4030_write_script_byte(address++, delay);
 if (err)
  goto out;
 err = twl4030_write_script_byte(address++, next);
out:
 return err;
}
