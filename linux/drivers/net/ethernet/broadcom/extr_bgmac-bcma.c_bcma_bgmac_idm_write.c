
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int core; } ;
struct bgmac {TYPE_1__ bcma; } ;


 void bcma_awrite32 (int ,int ,int ) ;

__attribute__((used)) static void bcma_bgmac_idm_write(struct bgmac *bgmac, u16 offset, u32 value)
{
 return bcma_awrite32(bgmac->bcma.core, offset, value);
}
