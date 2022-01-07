
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __u32 ;


 int VNI_HASH_BITS ;
 int hash_32 (int,int ) ;

__attribute__((used)) static inline __u32 geneve_net_vni_hash(u8 vni[3])
{
 __u32 vnid;

 vnid = (vni[0] << 16) | (vni[1] << 8) | vni[2];
 return hash_32(vnid, VNI_HASH_BITS);
}
