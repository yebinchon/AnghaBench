
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ETH_ALEN ;
 int ether_crc (int ,int *) ;

__attribute__((used)) static u32 smsc9420_hash(u8 addr[ETH_ALEN])
{
 return (ether_crc(ETH_ALEN, addr) >> 26) & 0x3f;
}
