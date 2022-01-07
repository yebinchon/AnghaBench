
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bgmac {int (* write ) (struct bgmac*,int ,int ) ;} ;


 int stub1 (struct bgmac*,int ,int ) ;

__attribute__((used)) static inline void bgmac_write(struct bgmac *bgmac, u16 offset, u32 value)
{
 bgmac->write(bgmac, offset, value);
}
