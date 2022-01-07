
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int core; } ;
struct bgmac {TYPE_1__ bcma; } ;


 int bcma_read32 (int ,int ) ;

__attribute__((used)) static u32 bcma_bgmac_read(struct bgmac *bgmac, u16 offset)
{
 return bcma_read32(bgmac->bcma.core, offset);
}
