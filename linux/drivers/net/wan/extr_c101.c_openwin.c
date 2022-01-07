
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ win0base; int page; } ;
typedef TYPE_1__ card_t ;


 scalar_t__ C101_PAGE ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void openwin(card_t *card, u8 page)
{
 card->page = page;
 writeb(page, card->win0base + C101_PAGE);
}
