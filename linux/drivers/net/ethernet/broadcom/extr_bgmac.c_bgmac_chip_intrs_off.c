
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgmac {int dummy; } ;


 int BGMAC_INT_MASK ;
 int bgmac_read (struct bgmac*,int ) ;
 int bgmac_write (struct bgmac*,int ,int ) ;

__attribute__((used)) static void bgmac_chip_intrs_off(struct bgmac *bgmac)
{
 bgmac_write(bgmac, BGMAC_INT_MASK, 0);
 bgmac_read(bgmac, BGMAC_INT_MASK);
}
