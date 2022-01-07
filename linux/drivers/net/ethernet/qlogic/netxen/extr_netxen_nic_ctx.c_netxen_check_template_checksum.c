
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int* md_template; int md_template_size; } ;
struct netxen_adapter {TYPE_1__ mdump; } ;



__attribute__((used)) static u32
netxen_check_template_checksum(struct netxen_adapter *adapter)
{
 u64 sum = 0 ;
 u32 *buff = adapter->mdump.md_template;
 int count = adapter->mdump.md_template_size/sizeof(uint32_t) ;

 while (count-- > 0)
  sum += *buff++ ;
 while (sum >> 32)
  sum = (sum & 0xFFFFFFFF) + (sum >> 32) ;

 return ~sum;
}
