
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;


 scalar_t__ RING_BUFNUM_BUFPOOL ;
 scalar_t__ xgene_enet_is_bufpool (int ) ;
 scalar_t__ xgene_enet_ring_bufnum (int ) ;

__attribute__((used)) static inline u8 xgene_enet_get_fpsel(u16 id)
{
 if (xgene_enet_is_bufpool(id))
  return xgene_enet_ring_bufnum(id) - RING_BUFNUM_BUFPOOL;

 return 0;
}
