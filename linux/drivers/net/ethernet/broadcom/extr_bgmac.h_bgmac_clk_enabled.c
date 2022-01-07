
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgmac {int (* clk_enabled ) (struct bgmac*) ;} ;


 int stub1 (struct bgmac*) ;

__attribute__((used)) static inline bool bgmac_clk_enabled(struct bgmac *bgmac)
{
 return bgmac->clk_enabled(bgmac);
}
