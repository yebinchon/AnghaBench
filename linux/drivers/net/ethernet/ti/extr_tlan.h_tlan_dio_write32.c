
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int TLAN_DIO_ADR ;
 int TLAN_DIO_DATA ;
 int outl (int ,int) ;
 int outw (int,int) ;

__attribute__((used)) static inline void tlan_dio_write32(u16 base_addr, u16 internal_addr, u32 data)
{
 outw(internal_addr, base_addr + TLAN_DIO_ADR);
 outl(data, base_addr + TLAN_DIO_DATA + (internal_addr & 0x2));

}
