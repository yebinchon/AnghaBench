
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bgmac {int dummy; } ;


 int bgmac_maskset (struct bgmac*,int ,int ,int ) ;

__attribute__((used)) static inline void bgmac_mask(struct bgmac *bgmac, u16 offset, u32 mask)
{
 bgmac_maskset(bgmac, offset, mask, 0);
}
