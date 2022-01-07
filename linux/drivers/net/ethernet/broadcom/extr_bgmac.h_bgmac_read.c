
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bgmac {int (* read ) (struct bgmac*,int ) ;} ;


 int stub1 (struct bgmac*,int ) ;

__attribute__((used)) static inline u32 bgmac_read(struct bgmac *bgmac, u16 offset)
{
 return bgmac->read(bgmac, offset);
}
