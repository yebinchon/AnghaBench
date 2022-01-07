
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgmac_dma_desc {int flags; } ;


 int DESC_OWN ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline int desc_get_owner(struct xgmac_dma_desc *p)
{
 return le32_to_cpu(p->flags) & DESC_OWN;
}
