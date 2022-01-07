
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int page; } ;
typedef TYPE_1__ card_t ;



__attribute__((used)) static inline u8 sca_get_page(card_t *card)
{
 return card->page;
}
