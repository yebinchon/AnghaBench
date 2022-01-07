
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int RING_BUFNUM_MASK ;

__attribute__((used)) static inline bool xgene_enet_is_bufpool(u16 id)
{
 return ((id & RING_BUFNUM_MASK) >= 0x20) ? 1 : 0;
}
