
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ETH_ALEN ;
 int ether_crc (int ,char*) ;

__attribute__((used)) static inline u32 lan78xx_hash(char addr[ETH_ALEN])
{
 return (ether_crc(ETH_ALEN, addr) >> 23) & 0x1ff;
}
