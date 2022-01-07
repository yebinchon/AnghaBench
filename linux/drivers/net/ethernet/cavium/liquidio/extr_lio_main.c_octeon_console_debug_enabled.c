
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int console_bitmask ;

__attribute__((used)) static int octeon_console_debug_enabled(u32 console)
{
 return (console_bitmask >> (console)) & 0x1;
}
