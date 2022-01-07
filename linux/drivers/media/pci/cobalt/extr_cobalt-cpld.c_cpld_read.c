
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cobalt {int bar1; } ;


 int ADRS (int ) ;
 int cobalt_bus_read32 (int ,int ) ;

__attribute__((used)) static u16 cpld_read(struct cobalt *cobalt, u32 offset)
{
 return cobalt_bus_read32(cobalt->bar1, ADRS(offset));
}
