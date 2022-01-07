
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bgmac {int (* clk_enable ) (struct bgmac*,int ) ;} ;


 int stub1 (struct bgmac*,int ) ;

__attribute__((used)) static inline void bgmac_clk_enable(struct bgmac *bgmac, u32 flags)
{
 bgmac->clk_enable(bgmac, flags);
}
