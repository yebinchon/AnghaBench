
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgmac {int (* phy_connect ) (struct bgmac*) ;} ;


 int stub1 (struct bgmac*) ;

__attribute__((used)) static inline int bgmac_phy_connect(struct bgmac *bgmac)
{
 return bgmac->phy_connect(bgmac);
}
