
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bgmac {int (* get_bus_clock ) (struct bgmac*) ;} ;


 int stub1 (struct bgmac*) ;

__attribute__((used)) static inline u32 bgmac_get_bus_clock(struct bgmac *bgmac)
{
 return bgmac->get_bus_clock(bgmac);
}
