
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ PCNET32_DWIO_RAP ;
 int inl (scalar_t__) ;

__attribute__((used)) static u16 pcnet32_dwio_read_rap(unsigned long addr)
{
 return inl(addr + PCNET32_DWIO_RAP) & 0xffff;
}
