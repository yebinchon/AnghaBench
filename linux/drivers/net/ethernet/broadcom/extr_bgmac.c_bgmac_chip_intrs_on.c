
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgmac {int int_mask; } ;


 int BGMAC_INT_MASK ;
 int bgmac_write (struct bgmac*,int ,int ) ;

__attribute__((used)) static void bgmac_chip_intrs_on(struct bgmac *bgmac)
{
 bgmac_write(bgmac, BGMAC_INT_MASK, bgmac->int_mask);
}
