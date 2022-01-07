
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cobalt {int bar1; } ;


 int ADRS (int ) ;
 void cobalt_bus_write32 (int ,int ,int ) ;

__attribute__((used)) static void cpld_write(struct cobalt *cobalt, u32 offset, u16 val)
{
 return cobalt_bus_write32(cobalt->bar1, ADRS(offset), val);
}
