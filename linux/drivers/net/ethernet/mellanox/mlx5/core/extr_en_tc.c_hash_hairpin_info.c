
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static inline u32 hash_hairpin_info(u16 peer_vhca_id, u8 prio)
{
 return (peer_vhca_id << 16 | prio);
}
