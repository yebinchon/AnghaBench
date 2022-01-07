
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bgmac {int (* cco_ctl_maskset ) (struct bgmac*,int ,int ,int ) ;} ;


 int stub1 (struct bgmac*,int ,int ,int ) ;

__attribute__((used)) static inline void bgmac_cco_ctl_maskset(struct bgmac *bgmac, u32 offset,
      u32 mask, u32 set)
{
 bgmac->cco_ctl_maskset(bgmac, offset, mask, set);
}
