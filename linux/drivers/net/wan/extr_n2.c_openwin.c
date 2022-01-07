
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ io; } ;
typedef TYPE_1__ card_t ;


 scalar_t__ N2_PSR ;
 int PSR_PAGEBITS ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static __inline__ void openwin(card_t *card, u8 page)
{
 u8 psr = inb(card->io + N2_PSR);
 outb((psr & ~PSR_PAGEBITS) | page, card->io + N2_PSR);
}
