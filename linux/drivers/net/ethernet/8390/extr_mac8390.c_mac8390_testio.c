
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mac8390_access { ____Placeholder_mac8390_access } mac8390_access ;


 int ACCESS_16 ;
 int ACCESS_32 ;
 int ACCESS_UNKNOWN ;
 int nubus_readl (unsigned long) ;
 int nubus_writel (int,unsigned long) ;
 int word_memcpy_fromcard (int*,unsigned long,int) ;
 int word_memcpy_tocard (unsigned long,int*,int) ;

__attribute__((used)) static enum mac8390_access mac8390_testio(unsigned long membase)
{
 u32 outdata = 0xA5A0B5B0;
 u32 indata = 0;


 nubus_writel(outdata, membase);

 indata = nubus_readl(membase);
 if (outdata == indata)
  return ACCESS_32;

 outdata = 0xC5C0D5D0;
 indata = 0;


 word_memcpy_tocard(membase, &outdata, 4);

 word_memcpy_fromcard(&indata, membase, 4);
 if (outdata == indata)
  return ACCESS_16;

 return ACCESS_UNKNOWN;
}
