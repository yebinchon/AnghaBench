
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ idm_base; } ;
struct bgmac {TYPE_1__ plat; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 platform_bgmac_idm_read(struct bgmac *bgmac, u16 offset)
{
 return readl(bgmac->plat.idm_base + offset);
}
