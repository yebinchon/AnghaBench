
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bgmac {int (* cmn_maskset32 ) (struct bgmac*,int ,int ,int ) ;} ;


 int stub1 (struct bgmac*,int ,int ,int ) ;

__attribute__((used)) static inline void bgmac_cmn_maskset32(struct bgmac *bgmac, u16 offset,
           u32 mask, u32 set)
{
 bgmac->cmn_maskset32(bgmac, offset, mask, set);
}
