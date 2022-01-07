
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCDC_SDR_ADDR ;
 int regw (unsigned long,int ) ;

__attribute__((used)) static inline void ccdc_setfbaddr(unsigned long addr)
{
 regw(addr & 0xffffffe0, CCDC_SDR_ADDR);
}
