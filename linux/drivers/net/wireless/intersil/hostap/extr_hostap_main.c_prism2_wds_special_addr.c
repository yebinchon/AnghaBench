
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static inline int prism2_wds_special_addr(u8 *addr)
{
 if (addr[0] || addr[1] || addr[2] || addr[3] || addr[4] || addr[5])
  return 0;

 return 1;
}
