
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int TLAN_DIO_ADR ;
 int TLAN_DIO_DATA ;
 int inb (int) ;
 int outw (int,int) ;

__attribute__((used)) static inline u8 tlan_dio_read8(u16 base_addr, u16 internal_addr)
{
 outw(internal_addr, base_addr + TLAN_DIO_ADR);
 return inb((base_addr + TLAN_DIO_DATA) + (internal_addr & 0x3));

}
