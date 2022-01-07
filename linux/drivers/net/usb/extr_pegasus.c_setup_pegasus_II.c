
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int features; int chip; } ;
typedef TYPE_1__ pegasus_t ;
typedef int __u8 ;


 int HAS_HOME_PNA ;
 int Reg1d ;
 int Reg7b ;
 int Reg81 ;
 int get_registers (TYPE_1__*,int,int,int*) ;
 scalar_t__ mii_mode ;
 int msleep (int) ;
 int set_register (TYPE_1__*,int,int) ;

__attribute__((used)) static inline void setup_pegasus_II(pegasus_t *pegasus)
{
 __u8 data = 0xa5;

 set_register(pegasus, Reg1d, 0);
 set_register(pegasus, Reg7b, 1);
 msleep(100);
 if ((pegasus->features & HAS_HOME_PNA) && mii_mode)
  set_register(pegasus, Reg7b, 0);
 else
  set_register(pegasus, Reg7b, 2);

 set_register(pegasus, 0x83, data);
 get_registers(pegasus, 0x83, 1, &data);

 if (data == 0xa5)
  pegasus->chip = 0x8513;
 else
  pegasus->chip = 0;

 set_register(pegasus, 0x80, 0xc0);
 set_register(pegasus, 0x83, 0xff);
 set_register(pegasus, 0x84, 0x01);

 if (pegasus->features & HAS_HOME_PNA && mii_mode)
  set_register(pegasus, Reg81, 6);
 else
  set_register(pegasus, Reg81, 2);
}
