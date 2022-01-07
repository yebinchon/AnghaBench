
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u16 ;
struct ks8995_switch {TYPE_1__* chip; } ;
typedef int __be16 ;
struct TYPE_2__ {unsigned int addr_width; unsigned int addr_shift; } ;


 int cpu_to_be16 (unsigned int) ;

__attribute__((used)) static inline __be16 create_spi_cmd(struct ks8995_switch *ks, int cmd,
        unsigned address)
{
 u16 result = cmd;


 result <<= ks->chip->addr_width + ks->chip->addr_shift;

 result |= address << ks->chip->addr_shift;

 return cpu_to_be16(result);
}
