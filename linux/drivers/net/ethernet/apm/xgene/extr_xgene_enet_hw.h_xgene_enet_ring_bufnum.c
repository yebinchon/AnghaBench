
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int RING_BUFNUM_MASK ;

__attribute__((used)) static inline u8 xgene_enet_ring_bufnum(u16 id)
{
 return id & RING_BUFNUM_MASK;
}
