
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __u8 ;


 int ether_crc (int,int *) ;

__attribute__((used)) static u32 greth_hash_get_index(__u8 *addr)
{
 return (ether_crc(6, addr)) & 0x3F;
}
