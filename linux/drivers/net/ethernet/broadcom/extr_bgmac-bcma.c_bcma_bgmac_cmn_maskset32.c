
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int cmn; } ;
struct bgmac {TYPE_1__ bcma; } ;


 int bcma_maskset32 (int ,int ,int ,int ) ;

__attribute__((used)) static void bcma_bgmac_cmn_maskset32(struct bgmac *bgmac, u16 offset, u32 mask,
         u32 set)
{
 bcma_maskset32(bgmac->bcma.cmn, offset, mask, set);
}
