
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PCNET32_WIO_RAP ;
 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int pcnet32_wio_check(unsigned long addr)
{
 outw(88, addr + PCNET32_WIO_RAP);
 return inw(addr + PCNET32_WIO_RAP) == 88;
}
