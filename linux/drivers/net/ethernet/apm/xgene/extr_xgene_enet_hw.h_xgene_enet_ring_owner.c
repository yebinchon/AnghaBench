
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum xgene_ring_owner { ____Placeholder_xgene_ring_owner } xgene_ring_owner ;


 int RING_OWNER_MASK ;

__attribute__((used)) static inline enum xgene_ring_owner xgene_enet_ring_owner(u16 id)
{
 return (id & RING_OWNER_MASK) >> 6;
}
