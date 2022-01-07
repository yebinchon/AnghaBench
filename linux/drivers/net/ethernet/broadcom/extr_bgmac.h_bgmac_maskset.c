
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bgmac {int dummy; } ;


 int bgmac_read (struct bgmac*,int ) ;
 int bgmac_write (struct bgmac*,int ,int) ;

__attribute__((used)) static inline void bgmac_maskset(struct bgmac *bgmac, u16 offset, u32 mask,
       u32 set)
{
 bgmac_write(bgmac, offset, (bgmac_read(bgmac, offset) & mask) | set);
}
