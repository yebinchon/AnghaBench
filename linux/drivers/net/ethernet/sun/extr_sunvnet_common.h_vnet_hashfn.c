
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 unsigned int VNET_PORT_HASH_MASK ;

__attribute__((used)) static inline unsigned int vnet_hashfn(u8 *mac)
{
 unsigned int val = mac[4] ^ mac[5];

 return val & (VNET_PORT_HASH_MASK);
}
