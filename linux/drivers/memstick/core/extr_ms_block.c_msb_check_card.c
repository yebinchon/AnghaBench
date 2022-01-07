
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msb_data {scalar_t__ card_dead; } ;
struct memstick_dev {int dummy; } ;


 struct msb_data* memstick_get_drvdata (struct memstick_dev*) ;

__attribute__((used)) static int msb_check_card(struct memstick_dev *card)
{
 struct msb_data *msb = memstick_get_drvdata(card);
 return (msb->card_dead == 0);
}
